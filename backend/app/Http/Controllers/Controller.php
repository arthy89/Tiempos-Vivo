<?php

namespace App\Http\Controllers;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Storage;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function getPageSize()
    {
        if (request()->filled('per_page')) {
            return intval(request()->input('per_page'));
        }
        if (request()->filled('page_size')) {
            return intval(request()->input('page_size'));
        }
        if (request()->filled('rowsPerPage')) {
            return intval(request()->input('rowsPerPage'));
        }
        return config('controller.page_size', 20);
    }

    public function generateViewSetList(Request $request, Builder $querySet, array $filterBy, array $searchBy, array $orderBy)
    {
        function addOrSkipBaseTable(string $colName, string $tableBaseName)
        {
            if (strpos($colName, '.') === false) {
                return $tableBaseName . '.' . $colName;
            }
            return $colName;
        }

        $tableBaseName = $querySet->getModel()->getTable();
        // return $tableBaseName;
        if ($request->hasAny($filterBy)) {
            foreach ($filterBy as $filter) {
                if ($request->filled($filter)) {
                    $querySet->where(addOrSkipBaseTable($filter, $tableBaseName), $request->input($filter));
                }
            }
        }
        if ($request->filled('search')) {
            $querySet->where(function ($q) use ($searchBy, $request, $tableBaseName) {
                foreach ($searchBy as $searchByCol) {
                    $q->orwhere(addOrSkipBaseTable($searchByCol, $tableBaseName), 'like', '%' . $request->input('search') . '%');
                }
                return $q;
            });
        }
        if ($request->filled('order_by')) {
            $searchOrderList = explode(',', $request->input('order_by'));
            foreach ($searchOrderList as $searchOrderParam) {
                $searchOrderParamWithoutSign = preg_replace('/-/', '', $searchOrderParam, 1);

                $orderDirection = substr($searchOrderParam, 0, 1) === '-' ? 'desc' : 'asc';

                if (in_array($searchOrderParamWithoutSign, $orderBy, true)) {
                    $querySet->orderBy(addOrSkipBaseTable($searchOrderParamWithoutSign, $tableBaseName), $orderDirection);
                }
            }
        }

        return $this->getPageSize()?$querySet->paginate($this->getPageSize()):response()->json(['data'=>$querySet->get()]);
    }

    public function newGenerateViewSetList(Request $request, Builder $querySet, array $filterBy, array $searchBy, array $orderBy)
    {
        function newAddOrSkipBaseTable(string $colName, string $tableBaseName)
        {
            if (strpos($colName, '.') === false) {
                return $tableBaseName . '.' . $colName;
            }
            return $colName;
        }

        $tableBaseName = $querySet->getModel()->getTable();

        // Filtro por campos básicos
        if ($request->hasAny($filterBy)) {
            foreach ($filterBy as $filter) {
                if ($request->filled($filter)) {
                    $querySet->where(newAddOrSkipBaseTable($filter, $tableBaseName), $request->input($filter));
                }
            }
        }

        // Búsqueda
        if ($request->filled('search')) {
            $querySet->where(function ($q) use ($searchBy, $request) {
                foreach ($searchBy as $searchByCol) {
                    // Si es un campo relacionado, utiliza whereHas
                    if (strpos($searchByCol, '.') !== false) {
                        $relation = explode('.', $searchByCol);
                        $q->orWhereHas($relation[0], function ($query) use ($relation, $request) {
                            $query->where($relation[1], 'like', '%' . $request->input('search') . '%');
                        });
                    } else {
                        $q->orwhere($searchByCol, 'like', '%' . $request->input('search') . '%');
                    }
                }
                return $q;
            });
        }

        // Ordenamiento
        if ($request->filled('order_by')) {
            $searchOrderList = explode(',', $request->input('order_by'));
            foreach ($searchOrderList as $searchOrderParam) {
                $searchOrderParamWithoutSign = preg_replace('/-/', '', $searchOrderParam, 1);
                $orderDirection = substr($searchOrderParam, 0, 1) === '-' ? 'desc' : 'asc';

                if (in_array($searchOrderParamWithoutSign, $orderBy, true)) {
                    $querySet->orderBy(newAddOrSkipBaseTable($searchOrderParamWithoutSign, $tableBaseName), $orderDirection);
                }
            }
        }

        return $this->getPageSize() ? $querySet->paginate($this->getPageSize()) : response()->json(['data' => $querySet->get()]);
    }


    /**
     * Función auxiliar para manejar la carga de archivos.
     *
     * @param Request $request
     * @param string $inputName
     * @param string $directory
     * @param array $uploadedFiles
     * @return string|null
     */
    public function handleFileUpload($request, $inputName, $directory, &$uploadedFiles)
    {
        if ($request->hasFile($inputName)) {
            $file = $request->file($inputName);
            $direccion = $file->store('public/' . $directory);
            $urlarchivo = Storage::url($direccion);

            $uploadedFiles[] = $direccion;

            return $urlarchivo;
        }

        return null;
    }

    /**
     * Función auxiliar para eliminar un archivo antiguo si existe y cargar uno nuevo.
     *
     * @param Request $request
     * @param string $inputName
     * @param string|null $existingFile
     * @param string $directory
     * @param array $uploadedFiles
     * @return string|null
     */
    public function updateFileIfExists($request, $inputName, $existingFile, $directory, &$uploadedFiles)
    {
        // Si hay un nuevo archivo en el request
        if ($request->hasFile($inputName)) {
            // Si ya existe un archivo almacenado, eliminarlo
            if ($existingFile) {
                Storage::delete(str_replace('/storage', 'public', $existingFile)); // Asegurarse de eliminar el archivo correcto
            }

            // Subir el nuevo archivo
            return $this->handleFileUpload($request, $inputName, $directory, $uploadedFiles);
        }

        // Si no hay nuevo archivo, devolver el archivo existente
        return $existingFile;
    }

    // todo Ejemplos
    // Actualizar
    // $reservorioR['foto_1'] = $this->updateFileIfExists($request, 'foto_1', $reservoriocv->foto_1, 'fotografias', $uploadedFiles);
    // Nuevo
    // $event_R['foto_url'] = $this->handleFileUpload($request, 'foto_url', 'fotografias', $uploadedFiles);
}
