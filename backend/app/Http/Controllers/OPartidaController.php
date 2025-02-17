<?php

namespace App\Http\Controllers;

use App\Models\OPartidas;
use Illuminate\Http\Request;

class OPartidaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        return OPartidas::where('event_id', $request->event_id)
                        ->orderBy('hora_salida', 'asc')
                        ->get();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    public function update_lista(Request $request)
    {
        // $list_partida_old = OPartidas::where('event_id', $request[0]['event_id'])->get();

        // Recorrer la nueva lista y actualizar en la base de datos
        foreach ($request->all() as $item) {
            OPartidas::where('id', $item['id'])->update([
                'hora_salida' => $item['hora_salida'],
            ]);
        }

        return response()->json('Orden de Partida Actualizada');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
