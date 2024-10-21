<?php

namespace App\Http\Controllers;

use App\Models\Event;
use App\Http\Requests\StoreEventRequest;
use App\Http\Requests\UpdateEventRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;

class EventController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        return $this->generateViewSetList(
            $request,
            Event::query(),
            [],
            ['id', 'name'],
            ['id', 'name']
            // ['id', 'nombre'],
            // ['id', 'nombre', 'codigo']
        );
    }

    public function calcularTiemposAcumulados($tiempos)
    {
        $tiemposAcumulados = [];
    
        foreach ($tiempos as $tiempo) {
            $tripulacionId = $tiempo->tripulacion_id;
    
            // Inicializar si no existe
            if (!isset($tiemposAcumulados[$tripulacionId])) {
                $tiemposAcumulados[$tripulacionId] = [
                    'tripulacion' => $tiempo->tripulacion,
                    'tiempo_acumulado' => Carbon::createFromFormat('H:i:s.u', '00:00:00.000'),
                    'penalizacion_acumulada' => Carbon::createFromFormat('H:i:s.u', '00:00:00.000'),
                    'num_especiales' => 0,
                ];
            }
    
            // Convertir hora_marcado a Carbon (con milisegundos)
            $horaMarcado = Carbon::createFromFormat('H:i:s.u', $tiempo->hora_marcado);
    
            // Convertir penalización a Carbon (sin milisegundos, formato H:i:s)
            $penalizacion = Carbon::createFromFormat('H:i:s', $tiempo->penalizacion ?? '00:00:00');
    
            // Acumular tiempos y penalizaciones usando diffInMilliseconds con true para evitar valores negativos
            $tiemposAcumulados[$tripulacionId]['tiempo_acumulado']->addMilliseconds($horaMarcado->diffInMilliseconds(Carbon::createFromFormat('H:i:s.u', '00:00:00.000'), true));
            $tiemposAcumulados[$tripulacionId]['penalizacion_acumulada']->addSeconds($penalizacion->diffInSeconds(Carbon::createFromFormat('H:i:s', '00:00:00'), true));
            $tiemposAcumulados[$tripulacionId]['num_especiales'] += 1;
        }
    
        // Formatear los tiempos acumulados (en formato HH:MM:SS.0 para mostrar solo 1 dígito en los milisegundos)
        foreach ($tiemposAcumulados as &$tripulacion) {
            $totalTiempo = $tripulacion['tiempo_acumulado']->copy()->addMilliseconds($tripulacion['penalizacion_acumulada']->diffInMilliseconds(Carbon::createFromFormat('H:i:s.u', '00:00:00.000'), true));
    
            // Obtener solo el primer dígito de los milisegundos
            $milliseconds = (int) floor($totalTiempo->format('u') / 100000); // Obtener solo el primer dígito de los milisegundos
    
            // Asignar el formato con un solo dígito de milisegundos
            $tripulacion['tiempo_acumulado'] = sprintf('%02d:%02d:%02d.%01d', $totalTiempo->hour, $totalTiempo->minute, $totalTiempo->second, $milliseconds);
            $tripulacion['penalizacion_acumulada'] = $tripulacion['penalizacion_acumulada']->format('H:i:s');
        }
    
        // Ordenar por num_especiales descendente y luego por tiempo_acumulado ascendente
        usort($tiemposAcumulados, function ($a, $b) {
            if ($b['num_especiales'] === $a['num_especiales']) {
                return $a['tiempo_acumulado'] <=> $b['tiempo_acumulado'];
            }
            return $b['num_especiales'] <=> $a['num_especiales'];
        });
    
        return $tiemposAcumulados;
    }

    public function index_lite(Request $request)
    {
        $categoria = $request->input('categoria');
        $eventId = $request->input('event_id');

        // Consulta para traer el evento con etapas, especiales, y tiempos
        $query = Event::where('id', $eventId)
            ->without(['org', 'ubigeo', 'tripulaciones'])  // Excluir relaciones no necesarias
            ->with(['etapas.especiales.tiempos' => function ($query) use ($categoria) {
                // Ordenar por hora marcada
                $query->orderBy('hora_marcado', 'asc');

                // Filtrar por categoría si se proporciona
                if ($categoria && $categoria != 'todas') {
                    $query->whereHas('tripulacion', function ($q) use ($categoria) {
                        $q->where('categoria', $categoria);
                    });
                }
            }]);

        // Obtener los datos del evento
        $eventData = $query->get();

        // Acumular los tiempos de las tripulaciones
        $tiemposAcumulados = $this->calcularTiemposAcumulados($eventData->pluck('etapas.*.especiales.*.tiempos')->flatten());

        return response()->json([
            'event' => $eventData,
            'tiempos_acumulados' => $tiemposAcumulados,
        ]);
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreEventRequest $request)
    {
        // $user = Auth::all();
        // return $user;

        DB::beginTransaction();

        $uploadedFiles = [];

        try {
            $event_R = $request->all();

            $event_R['foto_url'] = $this->handleFileUpload($request, 'foto_url', 'fotografias', $uploadedFiles);

            $evento = Event::create($event_R);

            DB::commit();

            return response("Evento creado con éxito", 201);
        } catch (\Exception $e) {
            DB::rollBack();

            foreach ($uploadedFiles as $file) {
                Storage::delete($file);
            }

            return response()->json(['error' => 'Error al crear el nuevo Evento', 'message' => $e->getMessage()], 500);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Event $event)
    {
        if ($event) {
            return response()->json($event);
        } else {
            return response()->json(['error' => 'El Evento/Carrera no existe.'], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreEventRequest $request, Event $event)
    {
        DB::beginTransaction();

        $uploadedFiles = [];

        try {
            $event_R = $request->all();

            $event_R['foto_url'] = $this->updateFileIfExists($request, 'foto_url', $event->foto_url, 'fotografias', $uploadedFiles);

            $event->update($event_R);

            DB::commit();

            return response("Evento actualizado con éxito", 201);
        } catch (\Exception $e) {
            DB::rollBack();

            foreach ($uploadedFiles as $file) {
                Storage::delete($file);
            }

            return response()->json(['error' => 'Error al actualizar el nuevo Evento', 'message' => $e->getMessage()], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Event $event)
    {
        $filesToDelete = [
            $event->foto_url,
        ];

        foreach ($filesToDelete as $file) {
            if ($file) {
                // Reemplaza la ruta de "/storage" a "public" para eliminarlo del almacenamiento
                $path = str_replace('/storage', 'public', $file);
                Storage::delete($path);
            }
        }
        $event->delete();

        return response("Evento Eliminado correctamente", 201);

    }
}
