<?php

namespace Database\Seeders;

use App\Models\Driver;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ConductoresSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $drivers = array(
            array('nombre' => 'Anibal', 'apellidos' => 'Aliaga', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Diego', 'apellidos' => 'Malaga', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Alvaro', 'apellidos' => 'Silva', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Percy', 'apellidos' => 'Ccoyo', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Luis', 'apellidos' => 'Mendoza', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Dany', 'apellidos' => 'Leiva', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Isaac', 'apellidos' => 'Paliza', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Ronaldo', 'apellidos' => 'Gutierrez', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'José', 'apellidos' => 'Medina', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Fabiola', 'apellidos' => 'Medina', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'David', 'apellidos' => 'Fernandez', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Alfredo', 'apellidos' => 'Peralta', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Cesar', 'apellidos' => 'Vega', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Nelson', 'apellidos' => 'Quispe', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Carlos', 'apellidos' => 'Zegarra', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Paul', 'apellidos' => 'Olazabal', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Luis', 'apellidos' => 'Ledesma', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'David', 'apellidos' => 'Cahuana', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Takeo', 'apellidos' => 'Matayoshi', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Santiago', 'apellidos' => 'Aguayo', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Marlon', 'apellidos' => 'Mendoza', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Fredy', 'apellidos' => 'Pezua', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Junior', 'apellidos' => 'Ellesca', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Jenrry', 'apellidos' => 'Quispe', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Gustavo', 'apellidos' => 'Vilcapoma', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Jorge', 'apellidos' => 'Hirose', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Raúl', 'apellidos' => 'Romero', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Mandela', 'apellidos' => 'Rivera', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Edgardo', 'apellidos' => 'Arimborgo', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Ricardo', 'apellidos' => 'Mendiola', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Jeff', 'apellidos' => 'Gavancho', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Celestino', 'apellidos' => 'Garrido', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Ricardo', 'apellidos' => 'Dasso', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Miguel', 'apellidos' => 'Alayza', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Rosmel', 'apellidos' => 'Chumpe', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Marko', 'apellidos' => 'Garces', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Roberto', 'apellidos' => 'Parraga', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Vidal', 'apellidos' => 'Barrantes', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Jimber', 'apellidos' => 'Aramayo', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Luis', 'apellidos' => 'Alayza', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Edison', 'apellidos' => 'Loa', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Ronmel', 'apellidos' => 'Palomino', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Richard', 'apellidos' => 'Palomino', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Rolynd', 'apellidos' => 'Juarez', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Andre', 'apellidos' => 'Martinez', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Jorge', 'apellidos' => 'Martinez', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Manuel', 'apellidos' => 'Yañez', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Raúl', 'apellidos' => 'Ccoyo', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Carlos', 'apellidos' => 'Castro', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Samuel', 'apellidos' => 'Dyer', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Joe', 'apellidos' => 'Zagal', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Eduardo', 'apellidos' => 'Castro', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Samuel', 'apellidos' => 'Benedetti', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Raul', 'apellidos' => 'Velit', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Javier', 'apellidos' => 'Arce', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Javier', 'apellidos' => 'Marchese', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Oswaldo', 'apellidos' => 'Carbone', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Paolo', 'apellidos' => 'Zani', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Miguel', 'apellidos' => 'Makino', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Jehndie', 'apellidos' => 'Tapia', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Armando', 'apellidos' => 'Sugobono', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Ricardo', 'apellidos' => 'Saloma', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Lino', 'apellidos' => 'Bernachea', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Thais', 'apellidos' => 'Gutierrez', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Paul', 'apellidos' => 'Medina', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Keyko', 'apellidos' => 'Medina', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Jose', 'apellidos' => 'Amador', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Josmell', 'apellidos' => 'Peralta', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Nicolas', 'apellidos' => 'Vega', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Erik', 'apellidos' => 'Quispe', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Renzo', 'apellidos' => 'Gutierrez', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Facundo', 'apellidos' => 'Olazabal', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Juan', 'apellidos' => 'Cueva', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Erick', 'apellidos' => 'Alarcon', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Carlos', 'apellidos' => 'Asencio', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Cesar', 'apellidos' => 'Suarez', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Edwin', 'apellidos' => 'Saravia', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Luis', 'apellidos' => 'Chumpitaz', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Joel', 'apellidos' => 'Escobar', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Franklin', 'apellidos' => 'Ellesca', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Renzo', 'apellidos' => 'Carpio', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Monica', 'apellidos' => 'Espinoza', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Julio', 'apellidos' => 'Sota', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Jose', 'apellidos' => 'Rivera', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Ronald', 'apellidos' => 'Llihua', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Gonzalo', 'apellidos' => 'Mendiola', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Maicol', 'apellidos' => 'Silvera', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Percy', 'apellidos' => 'Salcedo', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Alvaro', 'apellidos' => 'Rivera', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Renzo', 'apellidos' => 'Lercari', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Jaime', 'apellidos' => 'Zeballos', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Orlando', 'apellidos' => 'Pittaluga', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Reynaldo', 'apellidos' => 'Chumpe', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Diego', 'apellidos' => 'Oblitas', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Ronald', 'apellidos' => 'Uribe', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Ademir', 'apellidos' => 'Huallpa', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Ivan', 'apellidos' => 'Figueroa', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Gabriel', 'apellidos' => 'Lozada', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Edgar', 'apellidos' => 'Loa', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Gustavo', 'apellidos' => 'Medina', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Ronald', 'apellidos' => 'Laurante', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Matias', 'apellidos' => 'Aranguren', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Jose', 'apellidos' => 'Aros', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Manuel', 'apellidos' => 'Villafuerte', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Miguel', 'apellidos' => 'Saavedra', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Carlos', 'apellidos' => 'Peral', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'José', 'apellidos' => 'Bedoya', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Diego', 'apellidos' => 'Vallejo', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Julio', 'apellidos' => 'Mickle', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Manuel', 'apellidos' => 'Nuñez', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Julio', 'apellidos' => 'Echazu', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Mario', 'apellidos' => 'Costa', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Jhohan', 'apellidos' => 'Castillo L.', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Ricardo', 'apellidos' => 'Flores R.', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Carlos', 'apellidos' => 'Fernandez F.', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Carlos', 'apellidos' => 'Fernandez Z.', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Jhohan', 'apellidos' => 'Castillo R.', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Samuel', 'apellidos' => 'Dyer Jr.', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Jose Carlos', 'apellidos' => 'Vallejo', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Jesus Ll', 'apellidos' => 'Chullo', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Juan Carlos', 'apellidos' => 'Cornejo', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
            array('nombre' => 'Juan Pedro', 'apellidos' => 'Cilloniz', 'nacionalidad' => null, 'tipo_sangre' => null, 'fecha_nacimiento' => null, 'foto_url' => null),
        );

        DB::table((new Driver())->getTable())->insert($drivers);
    }
}