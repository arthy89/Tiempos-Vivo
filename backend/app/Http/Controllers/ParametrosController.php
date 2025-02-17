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

    /**
     * Update the specified resource in storage.
     */
    public function update(ParametrosRequest $request, Parametro $parametro)
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
        } else if ($request->modo_partida === 'shakedown')
        {
            // Si la consulta viene con 'shakedown' se ordenan los tiempos con los del primer espcial
            $evento_lite = Event::where('id', $parametro->event_id)
                            ->without(['org', 'ubigeo', 'tripulaciones', 'categorias'])
                            ->with([
                                'etapas' => function ($query) {
                                    $query->orderBy('id', 'asc')->limit(1); // Obtener la primera etapa
                                },
                                'etapas.especiales' => function ($query) {
                                    $query->orderBy('id', 'asc')->limit(1); // Obtener el primer especial de la primera etapa
                                },
                            ])
                            ->first();
    
            $especial_skdw = $evento_lite->etapas[0]->especiales[0]->load(['tiempos']);
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
        }

        return response()->json('Orden de Partida Generado correctamente');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Parametro $parametro)
    {
        //
    }
}
