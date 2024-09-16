<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('drivers', function (Blueprint $table) {
            $table->id();
            $table->string('nombre', length: 100);
            $table->string('apellidos', length: 100);
            $table->string('nacionalidad', length: 100)->nullable();
            $table->string('tipo_sangre', length: 10)->nullable();
            $table->date('fecha_nacimiento')->nullable()->nullable();
            $table->longText('foto_url')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('drivers');
    }
};
