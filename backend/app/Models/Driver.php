<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Driver extends Model
{
    use HasFactory;

    protected $fillable = [
        'nombre',
        'apellidos',
        'nacionalidad',
        'tipo_sangre',
        'fecha_nacimiento',
        'foto_url',
    ];

    // public function tripulacion(): HasOne
    // {
    //     return
    // }
}
