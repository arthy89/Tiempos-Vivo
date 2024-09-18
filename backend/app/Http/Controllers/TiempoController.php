<?php

namespace App\Http\Controllers;

use App\Models\Tiempo;
use App\Http\Requests\StoreTiempoRequest;
use App\Http\Requests\UpdateTiempoRequest;

class TiempoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Tiempo::all();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreTiempoRequest $request)
    {
        $tiempo = Tiempo::create($request->all());
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
        $tiempo->update($request->all());
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
