<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class PermisoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $god = Role::updateOrCreate(['name' => 'God'], ['name' => 'GOD', 'guard_name' => 'api']);
        $admin = Role::updateOrCreate(['name' => 'Administrador'], ['name' => 'Administrador', 'guard_name' => 'api']);
        $oficial = Role::updateOrCreate(['name' => 'Oficial'], ['name' => 'Oficial', 'guard_name' => 'api']);
        Permission::updateOrCreate(['name' => 'admin-permisos'], [
            'name' => 'admin-permisos',
            'description' => 'Administrar Permisos'
        ])->assignRole([$god, $admin]);
        Permission::updateOrCreate(['name' => 'admin-roles'], [
            'name' => 'admin-roles',
            'description' => 'Administrar usuarios'
        ])->assignRole([$god]);
        Permission::updateOrCreate(['name' => 'admin-usuarios'], [
            'name' => 'admin-usuarios',
            'description' => 'Administrar usuarios'
        ])->assignRole([$god]);
        Permission::updateOrCreate(['name' => 'admin-roles'], [
            'name' => 'admin-roles',
            'description' => 'Administrar usuarios'
        ])->assignRole([$god]);
        $user = User::create([
            'name' => 'Admin Test',
            'email' => 'arhyel@gmail.com',
            'password' => bcrypt('arthynis'),
        ]);
        $user->assignRole('GOD');
    }
}
