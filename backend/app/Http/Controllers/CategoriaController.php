<?php

namespace App\Http\Controllers;

use App\Models\Categoria;
use App\Http\Requests\StoreCategoriaRequest;

class CategoriaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return response()->json(Categoria::all());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreCategoriaRequest $request)
    {
        $cat = Categoria::create($request->all(), 201);
        return response()->json($cat);
    }

    /**
     * Display the specified resource.
     */
    public function show(Categoria $categoria)
    {
        if ($categoria) {
            return response()->json($categoria);
        } else {
            return response()->json(['error' => 'La Categoría no existe.'], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreCategoriaRequest $request, Categoria $categoria)
    {
        $categoria->update($request->all());
        return response()->json($categoria);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Categoria $categoria)
    {
        return response()->json($categoria->delete());
    }
}
