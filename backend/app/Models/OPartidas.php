<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OPartidas extends Model
{
    use HasFactory;

    protected $table = 'opartidas';

    protected $fillable = [
        'event_id',
        'tripulacion_id',
        'hora_salida',
    ];

    protected $with = ['tripulacion'];

    public function evento()
    {
        return $this->belongsTo(Event::class);
    }

    public function tripulacion()
    {
        return $this->belongsTo(Tripulacion::class);
    }
}
