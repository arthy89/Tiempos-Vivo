<?php

namespace App\Http\Controllers;

use App\Models\Especial;
use App\Http\Requests\StoreEspecialRequest;
use Carbon\Carbon;
use Illuminate\Http\Request;

class EspecialController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Especial::all();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreEspecialRequest $request)
    {
        $especial = Especial::create($request->all(), 201);
        return response()->json($especial);
    }

    /**
     * Display the specified resource.
     */
    public function show(Especial $especial)
    {
        if ($especial) {

            $tiempos = $especial->tiempos;

            foreach ($tiempos as $tiempo)
            {
                // Generar el tiempo con Carbon
                $hora_salida = Carbon::createFromFormat('H:i:s', $tiempo->hora_salida);
                $hora_llegada = Carbon::createFromFormat('H:i:s', $tiempo->hora_llegada);

                // Calcular el tiempo resultado
                $tiempo_resultado = $hora_llegada->diff($hora_salida);

                // Asignar valor 'tiempo_resultado' con el tiempo resultante en el array para la respesta API
                $tiempo['tiempo_resultado'] = $tiempo_resultado->format('%H:%I:%S');
            }

            // Ordenar los tiempos de manera ascendente segun el 'tiempo_resultado'
            $tiempos_ordenados = $tiempos->sortBy('tiempo_resultado');
            $tiempos = $tiempos_ordenados->values();

            return response()->json($tiempos);
        } else {
            return response()->json(['error' => 'El Especial no existe.'], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreEspecialRequest $request, Especial $especial)
    {
        $especial->update($request->all());
        return response()->json($especial);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Especial $especial)
    {
        return response()->json($especial->delete());
    }
}
