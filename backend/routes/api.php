<?php

use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\DriverController;
use App\Http\Controllers\EspecialController;
use App\Http\Controllers\EtapaController;
use App\Http\Controllers\EventController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FolioController;
use App\Http\Controllers\OrgController;
use Illuminate\Foundation\Http\Middleware\HandlePrecognitiveRequests;
use App\Http\Controllers\UserController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\PermisoController;
use App\Http\Controllers\ShakedownController;
use App\Http\Controllers\TiempoController;
use App\Http\Controllers\TripulacionController;
use App\Http\Controllers\UbigeoController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::middleware('auth:api')->get('/user', function (Request $request) {
    $roles = $request->user()->roles;
    $permisos = [];
    foreach ($roles as $rol) {

        # code...
        $permisos = array_merge($permisos, $rol->permissions->pluck('name')->toArray());

        // $permisos=$rol->permissions->pluck('name');
    }
    $permisos = array_values(array_unique($permisos));

    return response()->json([
        'user' => $request->user(),
        // 'rolesSelected' => $request->user()->roles,
        'permisos' => $permisos,
        'roles' => $request->user()->roles->pluck('name'),
    ]);
});

Route::apiResource('/ubigeos', UbigeoController::class)->middleware([HandlePrecognitiveRequests::class]);
Route::get('ubigeo', [UbigeoController::class, 'getUbigeo']);
Route::get('departamentos', [UbigeoController::class, 'getDepartamentos']);
Route::get('provincias', [UbigeoController::class, 'getProvincias']);
Route::get('distritos', [UbigeoController::class, 'getDistritos']);

Route::apiResource('/usuarios', UserController::class)->middleware([HandlePrecognitiveRequests::class]);
Route::apiResource('/roles', RoleController::class)->middleware([HandlePrecognitiveRequests::class]);
Route::apiResource('/permisos', PermisoController::class)->middleware([HandlePrecognitiveRequests::class]);

Route::apiResource('/orgs', OrgController::class)->middleware([HandlePrecognitiveRequests::class]);
Route::apiResource('/events', EventController::class)->middleware([HandlePrecognitiveRequests::class]);
Route::get('/events_lite', [EventController::class, 'index_lite'])->middleware([HandlePrecognitiveRequests::class]);
Route::apiResource('/categorias', CategoriaController::class)->middleware([HandlePrecognitiveRequests::class]);
Route::apiResource('/etapas', EtapaController::class)->middleware([HandlePrecognitiveRequests::class]);
Route::apiResource('/especials', EspecialController::class)->middleware([HandlePrecognitiveRequests::class]);
Route::get('/especial_etapa', [EspecialController::class, 'especial_etapa'])->middleware([HandlePrecognitiveRequests::class]);
Route::get('/especial_tiempos', [EspecialController::class, 'show_tiempos'])->middleware([HandlePrecognitiveRequests::class]);
Route::apiResource('/tiempos', TiempoController::class)->middleware([HandlePrecognitiveRequests::class]);
Route::apiResource('/shakedowns', ShakedownController::class)->middleware([HandlePrecognitiveRequests::class]);

Route::apiResource('/drivers', DriverController::class)->middleware([HandlePrecognitiveRequests::class]);
Route::apiResource('/tripulacions', TripulacionController::class)->middleware([HandlePrecognitiveRequests::class]);
