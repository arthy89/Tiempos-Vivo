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
            'tripulacion_id' => 'nullable|numeric',
            'hora_salida' => 'nullable',
            'hora_llegada' => 'nullable',
            'hora_marcado' => 'nullable',
            'penalizacion' => 'nullable',
            'registrador' => 'nullable',
        ];
    }
}
