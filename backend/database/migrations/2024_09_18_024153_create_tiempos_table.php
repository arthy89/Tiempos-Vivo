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
        Schema::create('tiempos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('especial_id')->nullable()->constrained()->onDelete('cascade');
            $table->foreignId('shakedown_id')->nullable()->constrained()->onDelete('cascade');
            $table->foreignId('tripulacion_id')->constrained();
            $table->time('hora_salida')->nullable();
            $table->time('hora_llegada')->nullable();
            $table->time('hora_marcado')->nullable(); // Para subir el tiempo directamente
            $table->time('penalizacion')->nullable();
            $table->text('registrador');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tiempos');
    }
};