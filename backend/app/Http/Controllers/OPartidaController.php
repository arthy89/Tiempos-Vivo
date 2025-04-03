<?php

namespace App\Http\Controllers;

use App\Models\Event;
use App\Models\OPartidas;
use App\Models\Parametro;
use Illuminate\Http\Request;

class OPartidaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        return OPartidas::where('event_id', $request->event_id)
                        ->orderBy('hora_salida', 'asc')
                        ->get();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
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

    public function update_lista(Request $request)
    {
        // Request de Parametros
        $parametros = $request->parametros;
        $parametro = Parametro::find($parametros['id']);
        $parametro->update($parametros); // Actualizar valores de los Parametros
        
        $lista = $request->lista; // Lista Actualizada

        if (count($lista) === 0) return response()->json(['error' => 'No hay Orden de Partida'], 412);

        // Obtener la Lista Actual del Evento
        $evento = Event::find($parametro['event_id'])->makeHidden(['org', 'ubigeo', 'tripulaciones', 'categorias', 'especiales']);
        $evento->opartidas()->delete(); // Eliminar Lista de Partida completa

        // Variables para calcular las 'horas de partida'
        $intervalo = $parametros['intervalo'];
        $hora_partida = $parametros['hora_partida'];

        // Recorrer la nueva lista y actualizar en la base de datos
        // Funcion donde se actualizaba registro por registro
        // foreach ($lista as $item) {
        //     OPartidas::where('id', $item['id'])->update([
        //         'hora_salida' => $hora_partida,
        //     ]);

        //     $hora_partida = $this->sumarTiempos($hora_partida, $intervalo);
        // }

        // Crear nuevos registros para la Lista de Partida
        foreach ($lista as $item)
        {
            OPartidas::create([
                'event_id' => $parametro['event_id'],
                'tripulacion_id' => $item['tripulacion_id'],
                'hora_salida' => $hora_partida,
            ]);

            $hora_partida = $this->sumarTiempos($hora_partida, $intervalo);
        }

        return response()->json('Orden de Partida Actualizada');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
