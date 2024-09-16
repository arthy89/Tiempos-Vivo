<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Ubigeo extends Model
{
    use HasFactory;
    protected $fillable = [
        'codigo',
        'tipo',
        'cod_dep',
        'cod_prov',
        'cod_dist',
        'nombre',
    ];

    protected $appends = ['departamento', 'provincia'];
    public function getdepartamentoAttribute()
    {
        $departamento = Ubigeo::select('cod_dep', 'cod_prov', 'cod_dist', 'nombre')
            ->where('cod_dep', substr($this->codigo, 0, 2))
            ->where('cod_prov', '00')
            ->where('cod_dist', '00')
            ->first();
        // Ejemplo de cálculo o valor personalizado
        return $departamento->nombre;
    }
    public function getprovinciaAttribute()
    {
        $provincia = Ubigeo::select('cod_dep', 'cod_prov', 'cod_dist', 'nombre')
            ->where('cod_dep', substr($this->codigo, 0, 2))
            ->where('cod_prov', substr($this->codigo, 2, -2))
            ->where('cod_dist', '00')
            ->first();

        // Ejemplo de cálculo o valor personalizado
        return $provincia->nombre;
    }

    public function orgs(): HasMany
    {
        return $this->hasMany(Org::class);
    }

    public function events(): HasMany
    {
        return $this->hasMany(Event::class);
    }
}
