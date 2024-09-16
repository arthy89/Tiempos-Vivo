<?php

namespace App\Http\Controllers;

use App\Models\Tripulacion;
use App\Http\Requests\StoreTripulacionRequest;
use Illuminate\Http\Request;

class TripulacionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        return $this->generateViewSetList(
            $request,
            Tripulacion::query(),
            [],
            [],
            [],
            // ['id', 'nombre'],
            // ['id', 'nombre', 'codigo']
        );
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreTripulacionRequest $request)
    {
        $tripulacion = Tripulacion::create($request->all(), 201);
        return response()->json($tripulacion);
    }

    /**
     * Display the specified resource.
     */
    public function show(Tripulacion $tripulacion)
    {
        if ($tripulacion) {
            return response()->json($tripulacion);
        } else {
            return response()->json(['error' => 'La Tripulación no existe.'], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreTripulacionRequest $request, Tripulacion $tripulacion)
    {
        $tripulacion->update($request->all());
        return response()->json($tripulacion);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Tripulacion $tripulacion)
    {
        return response()->json($tripulacion->delete());
    }
}
