<?php

namespace App\Http\Controllers;

use App\Models\Event;
use App\Http\Requests\StoreEventRequest;
use App\Http\Requests\UpdateEventRequest;
use App\Models\Parametro;
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
        // Cambioooooooooo
        // CON MILISEGUNDOOOOOOOOOOOOOOOOOOOS
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
            $penalizacionString = explode('.', $tiempo->penalizacion ?? '00:00:00')[0];
            $penalizacion = Carbon::createFromFormat('H:i:s', $penalizacionString);
    
            // Acumular tiempos y penalizaciones usando diffInMilliseconds con true para evitar valores negativos
            $tiemposAcumulados[$tripulacionId]['tiempo_acumulado']->addMilliseconds($horaMarcado->diffInMilliseconds(Carbon::createFromFormat('H:i:s.u', '00:00:00.000'), true));
            $tiemposAcumulados[$tripulacionId]['penalizacion_acumulada']->addSeconds($penalizacion->diffInSeconds(Carbon::createFromFormat('H:i:s', '00:00:00'), true));
            $tiemposAcumulados[$tripulacionId]['num_especiales'] += 1;
        }
    
        // Formatear los tiempos acumulados (en formato HH:MM:SS.0 para mostrar solo 1 dígito en los milisegundos)
        foreach ($tiemposAcumulados as &$tripulacion) {
            $totalTiempo = $tripulacion['tiempo_acumulado']->copy();
            
            // Obtener los componentes de tiempo
            $hours = (int) floor($totalTiempo->diffInSeconds(Carbon::createFromFormat('H:i:s.u', '00:00:00.000'), true) / 3600);
            $minutes = (int) ($totalTiempo->minute + ($hours * 60)) % 60;
            $seconds = $totalTiempo->second;
            $milliseconds = (int) floor($totalTiempo->format('u') / 100000); // Solo el primer dígito de los milisegundos
        
            // Asignar el formato con horas acumuladas correctamente (sin limitarse a 24 horas)
            $tripulacion['tiempo_acumulado'] = sprintf('%02d:%02d:%02d.%01d', $hours, $minutes, $seconds, $milliseconds);
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

        // // Consulta para traer el evento con especiales y tiempos
        // $query = Event::where('id', $eventId)
        //     ->without(['org', 'ubigeo', 'tripulaciones'])  // Excluir relaciones no necesarias
        //     ->with(['especiales' => function ($query) {
        //         // Filtrar solo los especiales donde estado es true
        //         $query->where('estado', true);
        //     }, 'especiales.tiempos' => function ($query) use ($categoria) {
        //         // Ordenar por hora marcada
        //         $query->orderBy('hora_marcado', 'asc');

        //         // Filtrar por categoría si se proporciona
        //         if ($categoria && $categoria != 'todas') {
        //             $query->whereHas('tripulacion', function ($q) use ($categoria) {
        //                 $q->where('categoria', $categoria);
        //             });
        //         }
        //     }]);

        // Consulta para traer el evento con especiales y tiempos válidos
        $query = Event::where('id', $eventId)
            ->without(['org', 'ubigeo', 'tripulaciones'])
            ->with(['especiales' => function ($query) {
                $query->where('estado', true);
            }, 'especiales.tiempos' => function ($query) use ($categoria) {
                $query->orderBy('hora_marcado', 'asc');

                // Filtrar por categoría si se proporciona
                if ($categoria && $categoria != 'todas') {
                    $query->whereHas('tripulacion', function ($q) use ($categoria) {
                        $q->where('categoria', $categoria);
                    });
                }

                // Filtrar tiempos inválidos (hora_llegada no nula y hora_marcado distinto de 00:00:00.0)
                $query->whereNotNull('hora_llegada')
                    ->where('hora_marcado', '!=', '00:00:00.0');
            }]);

        // Obtener los datos del evento
        $eventData = $query->get();

        // Acumular los tiempos de las tripulaciones
        $tiemposAcumulados = $this->calcularTiemposAcumulados($eventData->pluck('especiales.*.tiempos')->flatten());

        return response()->json([
            'event' => $eventData,
            'tiempos_acumulados' => $tiemposAcumulados,
        ]);
    }

    public function tiemposConsolidados($tiempos)
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
                    'especiales' => [] // Aquí guardamos los detalles de cada especial
                ];
            }

            // Convertir hora_marcado y penalización
            $horaMarcado = Carbon::createFromFormat('H:i:s.u', $tiempo->hora_marcado);

            $penalizacionString = explode('.', $tiempo->penalizacion ?? '00:00:00')[0];
            $penalizacion = Carbon::createFromFormat('H:i:s', $penalizacionString);

            // Acumular tiempos
            $tiemposAcumulados[$tripulacionId]['tiempo_acumulado']
                ->addMilliseconds($horaMarcado->diffInMilliseconds(Carbon::createFromFormat('H:i:s.u', '00:00:00.000'), true));
            $tiemposAcumulados[$tripulacionId]['penalizacion_acumulada']
                ->addSeconds($penalizacion->diffInSeconds(Carbon::createFromFormat('H:i:s', '00:00:00'), true));

            $tiemposAcumulados[$tripulacionId]['num_especiales'] += 1;

            // Agregar detalles del especial
            $tiemposAcumulados[$tripulacionId]['especiales'][] = [
                'nombre' => $tiempo->especial->nombre,
                'hora_salida' => $tiempo->hora_salida,
                'hora_llegada' => $tiempo->hora_llegada,
                'hora_marcado' => $tiempo->hora_marcado,
                'penalizacion' => $tiempo->penalizacion ?? '00:00:00'
            ];
        }

        // Formatear los tiempos acumulados
        foreach ($tiemposAcumulados as &$tripulacion) {
            $totalTiempo = $tripulacion['tiempo_acumulado']->copy();
            
            $hours = (int) floor($totalTiempo->diffInSeconds(Carbon::createFromFormat('H:i:s.u', '00:00:00.000'), true) / 3600);
            $minutes = (int) ($totalTiempo->minute + ($hours * 60)) % 60;
            $seconds = $totalTiempo->second;
            $milliseconds = (int) floor($totalTiempo->format('u') / 100000);

            $tripulacion['tiempo_acumulado'] = sprintf('%02d:%02d:%02d.%01d', $hours, $minutes, $seconds, $milliseconds);
            $tripulacion['penalizacion_acumulada'] = $tripulacion['penalizacion_acumulada']->format('H:i:s');
        }

        // Ordenar por num_especiales y tiempo_acumulado
        usort($tiemposAcumulados, function ($a, $b) {
            if ($b['num_especiales'] === $a['num_especiales']) {
                return $a['tiempo_acumulado'] <=> $b['tiempo_acumulado'];
            }
            return $b['num_especiales'] <=> $a['num_especiales'];
        });

        return $tiemposAcumulados;
    }

    public function index_consolidado(Request $request)
    {
        $eventId = $request->input('event_id');

        // Consulta para traer el evento con especiales y tiempos
        $query = Event::where('id', $eventId)
            ->without(['org', 'ubigeo', 'tripulaciones'])  // Excluir relaciones no necesarias
            ->with(['especiales' => function ($query) {
                // Filtrar solo los especiales donde estado es true
                $query->where('estado', true);
            }, 'especiales.tiempos' => function ($query) {
                // Ordenar por hora marcada
                $query->orderBy('hora_marcado', 'asc');

                // Filtrar tiempos inválidos (hora_llegada no nula y hora_marcado distinto de 00:00:00.0)
                $query->whereNotNull('hora_llegada')
                    ->where('hora_marcado', '!=', '00:00:00.0');
            }]);

        // Obtener los datos del evento
        $eventData = $query->get();

        // Acumular los tiempos de las tripulaciones
        $tiemposConsolidados = $this->tiemposConsolidados($eventData->pluck('especiales.*.tiempos')->flatten());

        return response()->json([
            'evento' => $eventData,
            'tiempos_consolidado' => $tiemposConsolidados,
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
            $evento->parametros()->create([]); //crear los parametros iniciales

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
