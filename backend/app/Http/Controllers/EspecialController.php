<?php

namespace App\Http\Controllers;

use App\Models\Especial;
use App\Http\Requests\StoreEspecialRequest;
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
            return response()->json($especial);
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
