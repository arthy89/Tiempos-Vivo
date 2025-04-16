<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Org extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'descripcion',
        'ubigeo_id',
        'foto_url',
    ];

    public function ubigeo(): BelongsTo
    {
        return $this->belongsTo(Ubigeo::class, 'codigo');
    }

    public function events(): HasMany
    {
        return $this->hasMany(Event::class);
    }

    public function users(): HasMany
    {
        return $this->hasMany(User::class);
    }
}
