<?php

namespace App\Http\Controllers;

use App\Models\Tiempo;
use App\Http\Requests\StoreTiempoRequest;
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
        // * Crear Tiempo cuando se ingresa directamente el Resultado
        if ($request->hora_marcado) {
            $time_R = $request->except(['hora_salida', 'hora_llegada']);

            $tiempo = Tiempo::create($time_R);
            return response()->json($tiempo);
        }

        // ? Crear Tiempo con Salida, Llegada y Penalizacion
        $time_R = $request->all();

        // Generar el tiempo con Carbon
        $hora_salida = $this->parseTime($request->hora_salida);
        $hora_llegada = $this->parseTime($request->hora_llegada);

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

            $tiempo = $tiempo->update($time_R);
            return response()->json($tiempo);
        }

        // ? Crear Tiempo con Salida, Llegada y Penalizacion
        $time_R = $request->all();

        // Generar el tiempo con Carbon
        $hora_salida = $this->parseTime($request->hora_salida);
        $hora_llegada = $this->parseTime($request->hora_llegada);

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

        $tiempo = $tiempo->update($time_R);
        return response()->json($tiempo);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Tiempo $tiempo)
    {
        return response()->json($tiempo->delete());
    }
}
