<?php

namespace App\Http\Controllers;

use App\Http\Requests\ParametrosRequest;
use App\Models\Event;
use App\Models\OPartidas;
use App\Models\Parametro;
use App\Models\Tripulacion;
use Illuminate\Http\Request;
use Carbon\Carbon;

class ParametrosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // $parametros = Parametro::all();
        // return response()->json($parametros);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(ParametrosRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Parametro $parametro)
    {
        if ($parametro) {
            return response()->json($parametro);
        } else {
            return response()->json(['error' => 'Los Parámetros no existen.'], 404);
        }
    }

    public function parametro_event(Request $request)
    {
        $parametros = Parametro::where('event_id', $request->event_id)->first();
        return response()->json($parametros);
    }

    private function sumarTiempos($hora1, $hora2) {
        // Convertir las horas en arrays de enteros [horas, minutos, segundos]
        list($h1, $m1, $s1) = explode(":", $hora1);
        list($h2, $m2, $s2) = explode(":", $hora2);
    
        // Convertir todo a segundos
        $segundosTotales = ($h1 * 3600 + $m1 * 60 + $s1) + ($h2 * 3600 + $m2 * 60 + $s2);
    
        // Calcular la nueva hora
        $horas = floor($segundosTotales / 3600);
        $minutos = floor(($segundosTotales % 3600) / 60);
        $segundos = $segundosTotales % 60;
    
        // Formatear la salida con dos dígitos (ej: "01:02:03")
        return sprintf("%02d:%02d:%02d", $horas, $minutos, $segundos);
    }

    private function calcularTiemposAcumulados($tiempos)
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
            $penalizacion = Carbon::createFromFormat('H:i:s', $tiempo->penalizacion ?? '00:00:00');
    
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
    
        return array_map(fn($item) => (object) $item, $tiemposAcumulados);
    }

    public function update_params(Request $request, Parametro $parametro)
    {
        
    }

    /**
     * Update the specified resource in storage.
     */
    public function opartida_params_update(ParametrosRequest $request, Parametro $parametro)
    {
        // Si los parámetros y el Botón son los mismo ya generados
        if (
            $request->hora_partida === $parametro->hora_partida && 
            $request->intervalo === $parametro->intervalo &&
            $request->modo_partida === $parametro->modo_partida
            )
        {
            return response()->json(['error' => 'Ya se generó el Orden de Partida'], 412);
        }
        
        // Vaciar la lista y generar una nueva
        $evento = Event::where('id', $parametro->event_id)->first();
        $evento->opartidas()->delete(); // Eliminar el Orden de Partida

        // Actualizar los Parametros del Evento
        $param_r = $request->only(['hora_partida', 'intervalo', 'modo_partida']);
        $parametro->update($param_r);

        // Variables para calcular las 'horas de partida'
        $intervalo = $request->intervalo;
        $hora_partida = $request->hora_partida;

        // Si el boton presionado fue 'Gen. Inscripcion'
        if ($request->modo_partida === 'inscritos')
        {
            $tripulaciones = Tripulacion::where('event_id', $parametro->event_id)->get();

            foreach ($tripulaciones as $tripulacion)
            {
                OPartidas::create([
                    'event_id' => $parametro->event_id,
                    'tripulacion_id' => $tripulacion->id,
                    'hora_salida' => $hora_partida,
                ]);

                $hora_partida = $this->sumarTiempos($hora_partida, $intervalo);
            }

            return response()->json('Orden de Partida Generado correctamente - Inscritos');
        }
        
        if ($request->modo_partida === 'shakedown')
        {
            // Si la consulta viene con 'shakedown' se ordenan los tiempos con los del primer espcial
            $evento_lite = Event::where('id', $parametro->event_id)
                            ->without(['org', 'ubigeo', 'tripulaciones', 'categorias'])
                            ->with([
                                'especiales' => function ($query) {
                                    $query->orderBy('id', 'asc')->limit(1); // Obtener el primer especial
                                },
                            ])
                            ->first();
    
            $especial_skdw = $evento_lite->especiales[0]->load(['tiempos']);
            $tiempos_skdw = $especial_skdw->tiempos->sortBy('hora_marcado')->values();
    
            foreach ($tiempos_skdw as $tiempo)
            {
                OPartidas::create([
                    'event_id' => $parametro->event_id,
                    'tripulacion_id' => $tiempo->tripulacion_id,
                    'hora_salida' => $hora_partida,
                ]);
    
                $hora_partida = $this->sumarTiempos($hora_partida, $intervalo);
            }

            return response()->json('Orden de Partida Generado correctamente - Shakedown');
        }

        if ($request->modo_partida === 'acumulado')
        {
            // Consulta para traer el evento con especiales y tiempos
            $query = Event::where('id', $parametro->event_id)
                ->without(['org', 'ubigeo', 'tripulaciones'])  // Excluir relaciones no necesarias
                ->with(['especiales' => function ($query) {
                    // Filtrar solo los especiales donde estado es true
                    $query->where('estado', true);
                }, 'especiales.tiempos' => function ($query) {
                    // Ordenar por hora marcada
                    $query->orderBy('hora_marcado', 'asc');
                }]);

            // Obtener los datos del evento
            $eventData = $query->get();

            // Acumular los tiempos de las tripulaciones
            $tiemposAcumulados = $this->calcularTiemposAcumulados($eventData->pluck('especiales.*.tiempos')->flatten());

            foreach ($tiemposAcumulados as $tiempo_acum)
            {
                OPartidas::create([
                    'event_id' => $parametro->event_id,
                    'tripulacion_id' => $tiempo_acum->tripulacion->id,
                    'hora_salida' => $hora_partida,
                ]);
    
                $hora_partida = $this->sumarTiempos($hora_partida, $intervalo);
            }

            return response()->json('Orden de Partida Generado correctamente - Acumulado');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Parametro $parametro)
    {
        //
    }
}
