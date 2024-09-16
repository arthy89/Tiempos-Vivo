<?php

namespace App\Http\Controllers;

use App\Models\Etapa;
use App\Http\Requests\StoreEtapaRequest;
use Illuminate\Http\Request;

class EtapaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Etapa::all();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreEtapaRequest $request)
    {
        $etapa = Etapa::create($request->all(), 201);
        return response()->json($etapa);
    }

    /**
     * Display the specified resource.
     */
    public function show(Etapa $etapa)
    {
        if ($etapa) {
            return response()->json($etapa);
        } else {
            return response()->json(['error' => 'La Etapa no existe.'], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreEtapaRequest $request, Etapa $etapa)
    {
        $etapa->update($request->all());
        return response()->json($etapa);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Etapa $etapa)
    {
        return response()->json($etapa->delete());
    }
}
