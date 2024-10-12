<?php

namespace App\Http\Controllers;

use App\Models\Event;
use App\Http\Requests\StoreEventRequest;
use App\Http\Requests\UpdateEventRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class EventController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        return $this->generateViewSetList(
            $request,
            Event::query(),
            [],
            ['id', 'name'],
            ['id', 'name']
            // ['id', 'nombre'],
            // ['id', 'nombre', 'codigo']
        );
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreEventRequest $request)
    {
        // $user = Auth::all();
        // return $user;

        DB::beginTransaction();

        $uploadedFiles = [];

        try {
            $event_R = $request->all();

            $event_R['foto_url'] = $this->handleFileUpload($request, 'foto_url', 'fotografias', $uploadedFiles);

            $evento = Event::create($event_R);

            DB::commit();

            return response("Evento creado con éxito", 201);
        } catch (\Exception $e) {
            DB::rollBack();

            foreach ($uploadedFiles as $file) {
                Storage::delete($file);
            }

            return response()->json(['error' => 'Error al crear el nuevo Evento', 'message' => $e->getMessage()], 500);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Event $event)
    {
        if ($event) {
            return response()->json($event);
        } else {
            return response()->json(['error' => 'El Evento/Carrera no existe.'], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreEventRequest $request, Event $event)
    {
        DB::beginTransaction();

        $uploadedFiles = [];

        try {
            $event_R = $request->all();

            $event_R['foto_url'] = $this->updateFileIfExists($request, 'foto_url', $event->foto_url, 'fotografias', $uploadedFiles);

            $event->update($event_R);

            DB::commit();

            return response("Evento actualizado con éxito", 201);
        } catch (\Exception $e) {
            DB::rollBack();

            foreach ($uploadedFiles as $file) {
                Storage::delete($file);
            }

            return response()->json(['error' => 'Error al actualizar el nuevo Evento', 'message' => $e->getMessage()], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Event $event)
    {
        $filesToDelete = [
            $event->foto_url,
        ];

        foreach ($filesToDelete as $file) {
            if ($file) {
                // Reemplaza la ruta de "/storage" a "public" para eliminarlo del almacenamiento
                $path = str_replace('/storage', 'public', $file);
                Storage::delete($path);
            }
        }
        $event->delete();

        return response("Evento Eliminado correctamente", 201);

    }
}
