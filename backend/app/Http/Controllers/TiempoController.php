<?php

namespace App\Http\Controllers;

use App\Events\TiempoCreado;
use App\Events\TiempoEditado;
use App\Models\Tiempo;
use App\Http\Requests\StoreTiempoRequest;
use App\Models\Especial;
use Illuminate\Http\Request;
use Carbon\Carbon;

class TiempoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        return $this->generateViewSetList(
            $request,
            Tiempo::query(),
            ['especial_id', 'shakedown_id'],
            [],
            ['hora_marcado']
        );
    }

    private function parseTime($time)
    {
        // Verifica si el tiempo contiene milisegundos
        if (strpos($time, '.') !== false) {
            // Si tiene milisegundos, usa el formato con precisión
            return Carbon::createFromFormat('H:i:s.u', $time);
        } else {
            // Si no tiene milisegundos, usa el formato estándar
            return Carbon::createFromFormat('H:i:s', $time);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreTiempoRequest $request)
    {
        // return $request;
        // Validar si la tripulación ya está registrada para este especial
        $existing = Tiempo::where('especial_id', $request->especial_id)
                            ->where('tripulacion_id', $request->tripulacion_id)
                            ->exists();

        if ($existing) {
            return response()->json(['error' => 'La Tripulación ya tiene Tiempo'], 400);
        }

        // * Crear Tiempo cuando se ingresa directamente el Resultado
        if ($request->hora_marcado) {
            $time_R = $request->except(['hora_salida', 'hora_llegada']);

            $tiempo = Tiempo::create($time_R);

            // ! Emitir evento
            broadcast(new TiempoCreado($tiempo))->toOthers();

            return response()->json($tiempo);
        }

        // ? Crear Tiempo con Salida, Llegada y Penalizacion
        $time_R = $request->all();

        // Generar el tiempo con Carbon
        $hora_salida = $this->parseTime($request->hora_salida);
        $hora_llegada = $this->parseTime($request->hora_llegada);

        // Validar si la hora de llegada es "00:00:00.0"
        if ($hora_llegada->toTimeString() === '00:00:00') {
            $tiempo_resultado = '00:00:00.0';
            $time_R['hora_marcado'] = $tiempo_resultado;

            $tiempo = Tiempo::create($time_R);

            // ! Emitir evento
            broadcast(new TiempoCreado($tiempo))->toOthers();

            return response()->json($tiempo);
        }

        // Calcular la diferencia en milisegundos
        $milisegundos_diferencia = $hora_llegada->diffInMilliseconds($hora_salida, true);

        // Agregar penalizacion si es existente
        if ($request->penalizacion) {
            $penalizacion = $this->parseTime($request->penalizacion);
            $milisegundos_penalizacion = $penalizacion->diffInMilliseconds(Carbon::createFromFormat('H:i:s', '00:00:00'), true);

            // Sumar penalización a la diferencia de tiempo
            $milisegundos_diferencia += $milisegundos_penalizacion;
        }

        // Convertir la diferencia de milisegundos a un formato de tiempo
        $horas = floor($milisegundos_diferencia / (1000 * 60 * 60));
        $minutos = floor(($milisegundos_diferencia % (1000 * 60 * 60)) / (1000 * 60));
        $segundos = floor(($milisegundos_diferencia % (1000 * 60)) / 1000);
        $milisegundos = $milisegundos_diferencia % 1000;

        // Asignar el resultado en formato H:i:s.u
        $tiempo_resultado = sprintf('%02d:%02d:%02d.%03d', $horas, $minutos, $segundos, $milisegundos);
        $time_R['hora_marcado'] = $tiempo_resultado;

        $tiempo = Tiempo::create($time_R);

        // ! Emitir evento
        broadcast(new TiempoCreado($tiempo))->toOthers();
        
        return response()->json($tiempo);
    }

    /**
     * Display the specified resource.
     */
    public function show(Tiempo $tiempo)
    {
        if ($tiempo) {
            return response()->json($tiempo);
        } else {
            return response()->json(['error' => 'El Tiempo no existe.'], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreTiempoRequest $request, Tiempo $tiempo)
    {
        // * Crear Tiempo cuando se ingresa directamente el Resultado
        if ($request->hora_marcado) {
            $time_R = $request->except(['hora_salida', 'hora_llegada']);

            $tiempo->update($time_R);

            // ! Emitir evento editar
            broadcast(new TiempoEditado($tiempo))->toOthers();

            return response()->json($tiempo);
        }

        // ? Crear Tiempo con Salida, Llegada y Penalizacion
        $time_R = $request->all();

        // Generar el tiempo con Carbon
        $hora_salida = $this->parseTime($request->hora_salida);
        $hora_llegada = $this->parseTime($request->hora_llegada);

        // Validar si la hora de llegada es "00:00:00.0"
        if ($hora_llegada->toTimeString() === '00:00:00') {
            $tiempo_resultado = '00:00:00.0';
            $time_R['hora_marcado'] = $tiempo_resultado;

            $tiempo->update($time_R);

            // ! Emitir evento
            broadcast(new TiempoEditado($tiempo))->toOthers();

            return response()->json($tiempo);
        }

        // Calcular la diferencia en milisegundos
        $milisegundos_diferencia = $hora_llegada->diffInMilliseconds($hora_salida, true);

        // Agregar penalizacion si es existente
        if ($request->penalizacion) {
            $penalizacion = $this->parseTime($request->penalizacion);
            $milisegundos_penalizacion = $penalizacion->diffInMilliseconds(Carbon::createFromFormat('H:i:s', '00:00:00'), true);

            // Sumar penalización a la diferencia de tiempo
            $milisegundos_diferencia += $milisegundos_penalizacion;
        }

        // Convertir la diferencia de milisegundos a un formato de tiempo
        $horas = floor($milisegundos_diferencia / (1000 * 60 * 60));
        $minutos = floor(($milisegundos_diferencia % (1000 * 60 * 60)) / (1000 * 60));
        $segundos = floor(($milisegundos_diferencia % (1000 * 60)) / 1000);
        $milisegundos = $milisegundos_diferencia % 1000;

        // Asignar el resultado en formato H:i:s.u
        $tiempo_resultado = sprintf('%02d:%02d:%02d.%03d', $horas, $minutos, $segundos, $milisegundos);
        $time_R['hora_marcado'] = $tiempo_resultado;

        $tiempo->update($time_R);

        // ! Emitir evento
        broadcast(new TiempoEditado($tiempo))->toOthers();

        return response()->json($tiempo);
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

    public function generar_salidas(Request $request)
    {
        $especial = Especial::find($request->especial);
        $evento = $especial->evento;
        $parametros = $evento->parametros;
        $o_partida = $evento->opartidas;

        // Eliminar tiempos generados
        $especial->tiempos()->delete();

        // Variables para calcular las 'horas de partida'
        $intervalo = $parametros->intervalo;
        $hora_partida = $parametros->hora_partida;

        if (count($o_partida) === 0) return response()->json(['error' => 'No hay Orden de Partida'], 412);

        foreach ($o_partida as $item)
        {
            Tiempo::create([
                'especial_id' => $especial->id,
                'tripulacion_id' => $item->tripulacion_id,
                'hora_salida' => $hora_partida,
                'hora_marcado' => '00:00:00.0',
            ]);

            $hora_partida = $this->sumarTiempos($hora_partida, $intervalo);
        }

        return response()->json('Salidas Generadas');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Tiempo $tiempo)
    {
        return response()->json($tiempo->delete());
    }
}
