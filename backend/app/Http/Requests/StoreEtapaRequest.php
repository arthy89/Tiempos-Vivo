<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreEtapaRequest extends FormRequest
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
            'event_id' => 'required',
            'nombre' => 'required',

            // Especiales
            'especiales' => 'array|nullable',
            'especiales.*.nombre' => 'nullable',
            'especiales.*.lugar' => 'nullable',
            'especiales.*.distancia' => 'nullable',
        ];
    }
}
