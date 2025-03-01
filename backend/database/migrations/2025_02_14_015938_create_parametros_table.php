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
        Schema::create('parametros', function (Blueprint $table) {
            $table->id();
            $table->foreignId('event_id')->constrained()->onDelete('cascade');
            $table->integer('set_especial')->nullable();
            $table->time('hora_partida', 1)->nullable();
            $table->time('intervalo', 1)->nullable();
            $table->time('esp_hora_salida', 1)->nullable();
            $table->time('esp_intervalo', 1)->nullable();
            $table->string('modo_partida')->nullable();
            $table->boolean('estado_evento')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('parametros');
    }
};
