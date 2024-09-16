<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Especial extends Model
{
    use HasFactory;

    protected $fillable = [
        'etapa_id',
        'nombre',
        'lugar',
        'distancia',
    ];

    // public function evento(): BelongsTo
    // {
    //     return $this->belongsTo(Event::class);
    // }
}
