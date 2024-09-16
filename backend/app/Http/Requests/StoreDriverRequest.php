<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreDriverRequest extends FormRequest
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
            'nombre' => 'required',
            'apellidos' => 'required',
            'nacionalidad' => 'nullable',
            'tipo_sangre' => 'nullable',
            'fecha_nacimiento' => 'nullable',
            'foto_url' => 'nullable',
        ];
    }
}
