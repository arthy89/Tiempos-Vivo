<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Event extends Model
{
    use HasFactory;

    protected $fillable = [
        'org_id',
        'name',
        'descripcion',
        'tipo',
        'ubigeo_id',
        'fecha',
        'hora',
        'foto_url',
        'ruta_url',
    ];

    // Relaciones principales
    protected $with = ['org', 'ubigeo', 'categorias', 'tripulaciones', 'etapas'];
    // protected $appends = ['org', 'ubigeo', 'categorias'];

    public function org(): BelongsTo
    {
        return $this->belongsTo(Org::class);
    }

    public function ubigeo(): BelongsTo
    {
        return $this->belongsTo(Ubigeo::class);
    }

    public function categorias(): HasMany
    {
        return $this->hasMany(Categoria::class);
    }

    public function tripulaciones(): HasMany
    {
        return $this->hasMany(Tripulacion::class);
    }

    public function etapas(): HasMany
    {
        return $this->hasMany(Etapa::class);
    }

    public function shakedown(): HasOne
    {
        return $this->hasOne(Shakedown::class);
    }
}
