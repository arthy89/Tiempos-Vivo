<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreUbigeoRequest;
use App\Models\Ubigeo;
use Illuminate\Http\Request;

class UbigeoController extends Controller
{
    public function getUbigeo()
    {
        if (request()->has('ubigeo_cod')) {
            $departamento = Ubigeo::select('cod_dep', 'cod_prov', 'cod_dist', 'nombre')
                ->where('cod_dep', substr(request('ubigeo_cod'), 0, 2))
                ->where('cod_prov', '00')
                ->where('cod_dist', '00')
                ->first();
            $provincia = Ubigeo::select('cod_dep', 'cod_prov', 'cod_dist', 'nombre')
                ->where('cod_dep', substr(request('ubigeo_cod'), 0, 2))
                ->where('cod_prov', substr(request('ubigeo_cod'), 2, -2))
                ->where('cod_dist', '00')
                ->first();
            $distrito = Ubigeo::select('cod_dep', 'cod_prov', 'cod_dist', 'nombre')
                ->where('cod_dep', substr(request('ubigeo_cod'), 0, 2))
                ->where('cod_prov', substr(request('ubigeo_cod'), 2, -2))
                ->where('cod_dist', substr(request('ubigeo_cod'), 4, 6))
                ->first();

            return response([
                'departamento' => $departamento,
                'provincia' => $provincia,
                'distrito' => $distrito,
            ]);
        };
    }

    public function getDepartamentos()
    {
        return response(
            Ubigeo::select('cod_dep', 'cod_prov', 'cod_dist', 'nombre')->where('tipo', 'departamento')->get(),
            200,
            ['cache-control' => 'private, max-age=604800'] // Guardar una semana
        );
    }

    public function getProvincias()
    {
        return response(
            Ubigeo::select('cod_dep', 'cod_prov', 'cod_dist', 'nombre')->where('tipo', 'provincia')->get(),
            200,
            ['cache-control' => 'private, max-age=604800'] // Guardar una semana
        );
    }

    public function getDistritos()
    {
        return response(
            Ubigeo::select('cod_dep', 'cod_prov', 'cod_dist', 'nombre')->where('tipo', 'distrito')->get(),
            200,
            ['cache-control' => 'private, max-age=604800'] // Guardar una semana
        );
    }

    public function index(Request $request)
    {
        //
        return $this->generateViewSetList(
            $request,
            Ubigeo::query(),
            [],
            ['id', 'nombre'],
            ['id', 'nombre', 'codigo']
        );
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreUbigeoRequest $request)
    {
        return response(Ubigeo::create($request->all()), 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Ubigeo $ubigeo)
    {
        return response()->json($ubigeo);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreUbigeoRequest $request, Ubigeo $ubigeo)
    {
        $ubigeo->update($request->all());
        // Permission::find($id)->update($request->all());
        return response()->json([$request, $ubigeo]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Ubigeo $ubigeo)
    {
        return response()->json($ubigeo->delete());
    }
}
