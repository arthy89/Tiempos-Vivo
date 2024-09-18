<?php

namespace App\Http\Controllers;

use App\Models\Shakedown;
use App\Http\Requests\StoreShakedownRequest;
use Carbon\Carbon;

class ShakedownController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Shakedown::all();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreShakedownRequest $request)
    {
        $shakedown = Shakedown::create($request->all());
        return response()->json($shakedown);
    }

    /**
     * Display the specified resource.
     */
    public function show(Shakedown $shakedown)
    {
        if ($shakedown) {

            $tiempos = $shakedown->tiempos;

            foreach ($tiempos as $tiempo)
            {
                // Generar el tiempo con Carbon
                $hora_salida = Carbon::createFromFormat('H:i:s', $tiempo->hora_salida);
                $hora_llegada = Carbon::createFromFormat('H:i:s', $tiempo->hora_llegada);

                // Calcular el tiempo resultado
                $tiempo_resultado = $hora_llegada->diff($hora_salida);

                // Agregar penalizacion si es existente
                if ($tiempo->penalizacion) {
                    $penalizacion = Carbon::createFromFormat('H:i:s', $tiempo->penalizacion);
                    $penalizacion_intervalo = $penalizacion->diffAsCarbonInterval(Carbon::createFromFormat('H:i:s', '00:00:00'));

                    $tiempo_resultado->add($penalizacion_intervalo);
                }

                // Asignar valor 'tiempo_resultado' con el tiempo resultante en el array para la respesta API
                $tiempo['tiempo_resultado'] = $tiempo_resultado->format('%H:%I:%S');
            }

            // Ordenar los tiempos de manera ascendente segun el 'tiempo_resultado'
            $tiempos_ordenados = $tiempos->sortBy('tiempo_resultado');
            $tiempos = $tiempos_ordenados->values();

            return response()->json($tiempos);
        } else {
            return response()->json(['error' => 'El Shakedown no existe.'], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreShakedownRequest $request, Shakedown $shakedown)
    {
        $shakedown->update($request->all());
        return response()->json($shakedown);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Shakedown $shakedown)
    {
        return response()->json($shakedown->delete());
    }
}
