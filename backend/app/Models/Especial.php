<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Especial extends Model
{
    use HasFactory;

    protected $fillable = [
        'etapa_id',
        'nombre',
        'lugar',
        'distancia',
    ];

    // protected $with = ['tiempos'];

    public function etapa(): BelongsTo
    {
        return $this->belongsTo(Etapa::class);
    }

    public function tiempos(): HasMany
    {
        return $this->hasMany(Tiempo::class);
    }
}
