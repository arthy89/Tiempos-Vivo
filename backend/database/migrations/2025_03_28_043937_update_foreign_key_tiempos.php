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
        Schema::table('tiempos', function (Blueprint $table) {
            $table->dropForeign(['tripulacion_id']); // Elimina la clave actual
            $table->foreign('tripulacion_id')
                    ->references('id')
                    ->on('tripulacions')
                    ->onDelete('cascade'); // Agrega la nueva clave
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('tiempos', function (Blueprint $table) {
            $table->dropForeign(['tripulacion_id']); // Elimina la nueva clave
            $table->foreign('tripulacion_id')
                    ->references('id')
                    ->on('tripulacions')
                    ->onDelete('restrict'); // Vuelve a la versión original
        });
    }
};
