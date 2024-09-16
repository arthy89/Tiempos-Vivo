<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

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
    ];
}
