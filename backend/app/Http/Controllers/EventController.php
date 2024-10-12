<?php

namespace App\Http\Controllers;

use App\Models\Event;
use App\Http\Requests\StoreEventRequest;
use App\Http\Requests\UpdateEventRequest;
use Illuminate\Http\Request;

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
        // todo Ejemplos
        // $req_tm['manual_url'] = $this->handleFileUpload($request, 'manual_url', 'archivos', $uploadedFiles);
        // $reservorioR['foto_1'] = $this->updateFileIfExists($request, 'foto_1', $reservoriocv->foto_1, 'fotografias', $uploadedFiles);

        $evento = Event::create($request->all(), 201);
        return response()->json($evento);
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
        $event->update($request->all());
        return response()->json($event);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Event $event)
    {
        return response()->json($event->delete());
    }
}
