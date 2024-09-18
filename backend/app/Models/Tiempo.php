<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Tiempo extends Model
{
    use HasFactory;

    protected $fillable = [
        'especial_id',
        'tripulacion_id',
        'hora_salida',
        'hora_llegada',
        'hora_marcado',
        'penalizacion',
        'registrador',
    ];

    protected $with = ['tripulacion'];

    public function especial(): BelongsTo
    {
        return $this->belongsTo(Especial::class);
    }

    public function tripulacion(): BelongsTo
    {
        return $this->belongsTo(Tripulacion::class);
    }
}
