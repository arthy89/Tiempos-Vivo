<?php

namespace App\Http\Controllers;

use App\Models\Driver;
use App\Http\Requests\StoreDriverRequest;
use App\Http\Requests\UpdateDriverRequest;
use Illuminate\Http\Request;

class DriverController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        return $this->generateViewSetList(
            $request,
            Driver::query(),
            [],
            ['nombre', 'apellidos'],
            ['id', 'nombre']
        );
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreDriverRequest $request)
    {
        $driver = Driver::create($request->all(), 201);
        return response()->json($driver);
    }

    /**
     * Display the specified resource.
     */
    public function show(Driver $driver)
    {
        if ($driver) {
            return response()->json($driver);
        } else {
            return response()->json(['error' => 'El Competidor no existe.'], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreDriverRequest $request, Driver $driver)
    {
        $driver->update($request->all());
        return response()->json($driver);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Driver $driver)
    {
        return response()->json($driver->delete());
    }
}
