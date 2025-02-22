<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Parametro extends Model
{
    use HasFactory;

    protected $fillable = [
        'event_id',
        'set_especial',
        'hora_partida',
        'intervalo',
        'esp_hora_salida',
        'esp_intervalo',
        'modo_partida',
        'estado_evento',
    ];

    public function evento(): BelongsTo
    {
        return $this->belongsTo(Event::class);
    }
}
