<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Etapa extends Model
{
    use HasFactory;

    protected $fillable = [
        'event_id',
        'nombre',
    ];

    protected $with = ['especiales'];

    public function evento(): BelongsTo
    {
        return $this->belongsTo(Event::class);
    }

    public function especiales(): HasMany
    {
        return $this->hasMany(Especial::class);
    }
}
