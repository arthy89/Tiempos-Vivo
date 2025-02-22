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
    protected $with = ['org', 'ubigeo', 'categorias', 'tripulaciones', 'especiales'];
    // protected $appends = ['org', 'ubigeo', 'categorias'];

    public function org(): BelongsTo
    {
        return $this->belongsTo(Org::class);
    }

    public function ubigeo(): BelongsTo
    {
        return $this->belongsTo(Ubigeo::class, 'ubigeo_id', 'codigo');
    }

    public function categorias(): HasMany
    {
        return $this->hasMany(Categoria::class);
    }

    public function tripulaciones(): HasMany
    {
        return $this->hasMany(Tripulacion::class);
    }

    public function especiales(): HasMany
    {
        return $this->hasMany(Especial::class);
    }

    public function parametros(): HasOne
    {
        return $this->hasOne(Parametro::class);
    }

    public function opartidas()
    {
        return $this->hasMany(OPartidas::class);
    }
}
