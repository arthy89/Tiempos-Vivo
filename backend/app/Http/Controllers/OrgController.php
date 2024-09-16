<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreOrg;
use App\Models\Org;
use Illuminate\Http\Request;

class OrgController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        return $this->generateViewSetList(
            $request,
            Org::query(),
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
    public function store(StoreOrg $request)
    {
        $org = Org::create($request->all(), 201);
        return response()->json($org);
    }

    /**
     * Display the specified resource.
     */
    public function show(Org $org)
    {
        if ($org) {
            return response()->json($org);
        } else {
            return response()->json(['error' => 'El Club no existe.'], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreOrg $request, Org $org)
    {
        $org->update($request->all());
        return response()->json($org);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Org $org)
    {
        return response()->json($org->delete());
    }
}
