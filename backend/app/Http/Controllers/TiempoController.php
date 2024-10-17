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

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreTiempoRequest $request)
    {
        // * Crear Tiempo cuando se ingresa directamente el Resultado
        if ($request->hora_marcado) {
            $time_R = $request->except(['hora_salida', 'hora_llegada']);

            $tiempo = Tiempo::create($time_R);
            return response()->json($tiempo);
        }

        // ? Crear Tiempo con Salida, Llegada y Penalizacion
        $time_R = $request->all();

        // Generar el tiempo con Carbon
        $hora_salida = Carbon::createFromFormat('H:i:s', $request->hora_salida);
        $hora_llegada = Carbon::createFromFormat('H:i:s', $request->hora_llegada);

        // Calcular el tiempo resultado
        $tiempo_resultado = $hora_llegada->diff($hora_salida);

        // Agregar penalizacion si es existente
        if ($request->penalizacion) {
            $penalizacion = Carbon::createFromFormat('H:i:s', $request->penalizacion);
            $penalizacion_intervalo = $penalizacion->diffAsCarbonInterval(Carbon::createFromFormat('H:i:s', '00:00:00'));

            $tiempo_resultado->add($penalizacion_intervalo);
        }

        // Asignar valor 'hora_marcado' con el tiempo resultante en el array para la respesta API
        $time_R['hora_marcado'] = $tiempo_resultado->format('%H:%I:%S');

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
        $hora_salida = Carbon::createFromFormat('H:i:s', $request->hora_salida);
        $hora_llegada = Carbon::createFromFormat('H:i:s', $request->hora_llegada);

        // Calcular el tiempo resultado
        $tiempo_resultado = $hora_llegada->diff($hora_salida);

        // Agregar penalizacion si es existente
        if ($request->penalizacion) {
            $penalizacion = Carbon::createFromFormat('H:i:s', $request->penalizacion);
            $penalizacion_intervalo = $penalizacion->diffAsCarbonInterval(Carbon::createFromFormat('H:i:s', '00:00:00'));

            $tiempo_resultado->add($penalizacion_intervalo);
        }

        // Asignar valor 'hora_marcado' con el tiempo resultante en el array para la respesta API
        $time_R['hora_marcado'] = $tiempo_resultado->format('%H:%I:%S');

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
