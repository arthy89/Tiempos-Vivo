<?php

namespace Database\Seeders;

use App\Models\Org;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class OrgSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $orgs = array(
            array('name' => 'Automóvil Club Peruano', 'descripcion' => null, 'ubigeo_id' => '211101', 'foto_url' => null),
        );

        DB::table((new Org())->getTable())->insert($orgs);
    }
}
