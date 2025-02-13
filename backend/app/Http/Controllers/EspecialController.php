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
        $evento = Event::with('etapas.especiales')
            ->findOrFail($request->event_id);

        // Obtener los IDs de los especiales
        $especialIds = $evento->etapas->flatMap->especiales->pluck('id');

        // Crear una consulta con esos IDs
        $query = Especial::whereIn('id', $especialIds);
        // return $query;

        return $this->generateViewSetList(
            $request,
            $query,
            [],
            [],
            ['nombre']
        );
    }

    public function especial_etapa(Request $request)
    {
        $especiales = Especial::where('etapa_id', $request->etapa_id)->get();
        return response()->json($especiales);
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
    // public function show(Especial $especial, Request $request)
    // {
    //     $categoria = $request->input('categoria');

    //     // Consulta base con la relación 'tiempos' ordenada
    //     $query = Especial::where('id', $especial->id)
    //         ->with(['tiempos' => function($query) use ($categoria) {
    //             $query->orderBy('hora_marcado', 'asc');

    //             // Aplica el filtro de categoría si se proporciona
    //             if ($categoria) {
    //                 $query->whereHas('tripulacion', function($q) use ($categoria) {
    //                     $q->where('categoria', $categoria);
    //                 });
    //             }
    //         }]);

    //     // Genera la vista o lista con la función personalizada
    //     return $this->generateViewSetList(
    //         $request,
    //         $query,
    //         [],
    //         [],  // Sin filtros adicionales en esta parte
    //         []   // Sin ordenamientos adicionales
    //     );
    // }
    
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
            ->orderBy('hora_marcado', 'asc');

        // Aplica el filtro de categoría si se proporciona
        if ($categoria && $categoria != 'todas') {
            $query->whereHas('tripulacion', function($q) use ($categoria) {
                $q->where('categoria', $categoria);
            });
        }

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
