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
        Schema::create('tripulacions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('piloto');
            $table->foreign('piloto')->on('drivers')->onDelete('cascade');
            $table->unsignedBigInteger('navegante');
            $table->foreign('navegante')->on('drivers')->onDelete('cascade');
            $table->foreignId('event_id')->constrained()->onDelete('cascade');
            $table->string('categoria', length: 100);
            $table->string('auto', length: 100);
            $table->string('auto_num', length: 100);
            $table->string('foto_url', length: 100)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tripulacions');
    }
};
