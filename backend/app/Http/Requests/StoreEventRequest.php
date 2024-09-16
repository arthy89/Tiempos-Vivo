<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreEventRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'org_id' => 'required',
            'name' => 'required',
            'descripcion' => 'nullable',
            'tipo' => 'required',
            'ubigeo_id' => 'required',
            'fecha' => 'required',
            'hora' => 'required',
            'foto_url' => 'nullable',
            'ruta_url' => 'nullable',
        ];
    }
}
