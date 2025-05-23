<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Traits\HasRoles;

use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'org_id',
        'password',
        'estado',
    ];
    protected $guard_name = 'api';

    // protected $with = ['org'];

    // public function validateForPassportPasswordGrant($password)
    // {
    //     return Hash::check($password, $this->password);
    // }
    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function org()
    {
        return $this->belongsTo(Org::class, 'org_id');
    }
}

// TODO para asignar Roles a Usuarios desde Tinker
// php artisan tinker

// use App\Models\User;

// $admin = User::where('email', 'aca_admin@gmail.com')->first();
// $oficial = User::where('email', 'aca_ofi@gmail.com')->first();

// $admin->assignRole('Administrador');
// $oficial->assignRole('Oficial');