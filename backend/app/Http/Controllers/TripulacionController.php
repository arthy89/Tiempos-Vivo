<?php

namespace App\Http\Controllers;

use App\Models\Tripulacion;
use App\Http\Requests\StoreTripulacionRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

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
            ['event_id'],
            ['id', 'piloto', 'navegante'],
            ['id', 'piloto', 'navegante'],
        );
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreTripulacionRequest $request)
    {
        DB::beginTransaction();

        $uploadedFiles = [];

        try {
            $tri_R = $request->all();

            $tri_R['foto_url'] = $this->handleFileUpload($request, 'foto_url', 'fotografias', $uploadedFiles);

            $tripulacion = Tripulacion::create($tri_R);

            DB::commit();

            return response("Tripulación creada con éxito", 201);
        } catch (\Exception $e) {
            DB::rollBack();

            foreach ($uploadedFiles as $file) {
                Storage::delete($file);
            }

            return response()->json(['error' => 'Error al crear la nueva Tripulación', 'message' => $e->getMessage()], 500);
        }
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
        DB::beginTransaction();

        $uploadedFiles = [];

        try {
            $tri_R = $request->all();

            $tri_R['foto_url'] = $this->updateFileIfExists($request, 'foto_url', $tripulacion->foto_url, 'fotografias', $uploadedFiles);

            $tripulacion->update($tri_R);

            DB::commit();

            return response("Tripulación actualizada con éxito", 201);
        } catch (\Exception $e) {
            DB::rollBack();

            foreach ($uploadedFiles as $file) {
                Storage::delete($file);
            }

            return response()->json(['error' => 'Error al actualizar la Tripulación', 'message' => $e->getMessage()], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Tripulacion $tripulacion)
    {
        $filesToDelete = [
            $tripulacion->foto_url,
        ];

        foreach ($filesToDelete as $file) {
            if ($file) {
                // Reemplaza la ruta de "/storage" a "public" para eliminarlo del almacenamiento
                $path = str_replace('/storage', 'public', $file);
                Storage::delete($path);
            }
        }
        $tripulacion->delete();

        return response("Evento Eliminado correctamente", 201);
    }
}
