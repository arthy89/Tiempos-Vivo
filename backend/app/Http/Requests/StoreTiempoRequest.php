<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreTiempoRequest extends FormRequest
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
            'especial_id' => 'nullable|numeric',
            'shakedown_id' => 'nullable|numeric',
            'tripulacion_id' => 'required|numeric',
            'hora_salida' => 'required',
            'hora_llegada' => 'required',
            'hora_marcado' => 'nullable',
            'penalizacion' => 'nullable',
            'registrador' => 'required',
        ];
    }
}