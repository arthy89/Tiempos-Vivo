<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Shakedown extends Model
{
    use HasFactory;

    protected $fillable = [
        'event_id',
        'nombre',
        'lugar',
        'distancia',
    ];

    public function evento(): BelongsTo
    {
        return $this->belongsTo(Event::class);
    }

    public function tiempos(): HasMany
    {
        return $this->hasMany(Tiempo::class);
    }
}
