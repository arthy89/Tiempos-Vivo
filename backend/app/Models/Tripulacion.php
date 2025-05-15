<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Tripulacion extends Model
{
    use HasFactory;

    protected $fillable = [
        'piloto',
        'navegante',
        'event_id',
        'categoria',
        'auto',
        'auto_num',
        'foto_url',
        'estado',
    ];

    protected $with = ['piloto', 'navegante'];

    public function piloto(): BelongsTo
    {
        return $this->belongsTo(Driver::class, 'piloto');
    }

    public function navegante(): BelongsTo
    {
        return $this->belongsTo(Driver::class, 'navegante');
    }
}
