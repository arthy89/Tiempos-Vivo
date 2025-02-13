<?php

namespace App\Http\Controllers;

use App\Models\Etapa;
use App\Http\Requests\StoreEtapaRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class EtapaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        return $this->generateViewSetList(
            $request,
            Etapa::query(),
            ['event_id'],
            ['id', 'nombre'],
            ['id', 'nombre']
        );
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreEtapaRequest $request)
    {
        DB::beginTransaction();

        try {
            $etapa = Etapa::create($request->all());

            // if ($request->especiales) {
            //     $etapa->especiales()->createMany($request->especiales);
            // }

            DB::commit();

            return response("Etapa creada con éxito", 201);
        } catch (\Exception $e) {
            DB::rollBack();

            return response()->json(['error' => 'Error al crear la Etapa', 'message' => $e->getMessage()], 500);
        }
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
        DB::beginTransaction();

        try {
            $etapa->update($request->all());

            // if ($request->especiales) {
            //     $etapa->especiales()->delete();
            //     $etapa->especiales()->createMany($request->especiales);
            // }

            DB::commit();

            return response("Etapa actualizada con éxito", 201);
        } catch (\Exception $e) {
            DB::rollBack();

            return response()->json(['error' => 'Error al actualizar la Etapa', 'message' => $e->getMessage()], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Etapa $etapa)
    {
        $etapa->delete();
        return response("Etapa eliminada");
    }
}
