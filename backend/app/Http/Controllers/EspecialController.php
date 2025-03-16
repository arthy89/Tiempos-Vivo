<?php

namespace App\Http\Controllers;

use App\Models\Especial;
use App\Http\Requests\StoreEspecialRequest;
use App\Models\Event;
use App\Models\Tiempo;
use Carbon\Carbon;
use Illuminate\Http\Request;

class EspecialController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        // params = 'event_id'
        $query = Especial::where('event_id', $request->event_id);

        return $this->generateViewSetList(
            $request,
            $query,
            [],
            [],
            ['nombre']
        );
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreEspecialRequest $request)
    {
        $especial = Especial::create($request->all(), 201);
        return response()->json($especial);
    }
    
    public function show(Especial $especial)
    {
        if ($especial) {
            return response()->json($especial);
        } else {
            return response()->json(['error' => 'El Especial no existe.'], 404);
        }
    }

    public function show_tiempos(Request $request)
    {
        $categoria = $request->input('categoria');
        $especial = $request->input('especial');

        // Modifica la consulta para trabajar sobre el modelo Tiempo
        $query = Tiempo::where('especial_id', $especial)
            ->with(['tripulacion.piloto', 'tripulacion.navegante'])
            ->orderByRaw("
                CASE 
                    WHEN hora_marcado = '00:00:00.0' AND hora_llegada IS NULL THEN 1
                    ELSE 0
                END
            ")
            ->orderBy('hora_marcado', 'asc');

        // Aplica el filtro de categoría si se proporciona
        if ($categoria && $categoria != 'todas') {
            $query->whereHas('tripulacion', function($q) use ($categoria) {
                $q->where('categoria', $categoria);
            });
        }

        // return $query->get();

        // Genera la vista o lista con la función personalizada
        return $this->BestGenerateViewSetList(
            $request,
            $query,
            [],
            [
                'tripulacion.auto_num',
                'tripulacion.piloto.nombre',
                'tripulacion.piloto.apellidos',
                'tripulacion.navegante.nombre',
                'tripulacion.navegante.apellidos',
            ],  
            ['tripulacion.piloto', 'tripulacion.navegante']
        );
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
