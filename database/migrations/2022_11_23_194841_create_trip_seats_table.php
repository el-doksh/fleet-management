<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('trip_seats', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('trip_id');
            $table->unsignedBigInteger('seat_id');
            $table->unsignedBigInteger('start_city_id');
            $table->unsignedBigInteger('end_city_id');
            $table->timestamp('booked_at')->nullable();
            $table->foreign('trip_id')->references('id')->on('trips');
            $table->foreign('seat_id')->references('id')->on('bus_seats');
            $table->foreign('start_city_id')->references('id')->on('cities');
            $table->foreign('end_city_id')->references('id')->on('cities');
            $table->unique(['trip_id', 'seat_id', 'start_city_id', 'end_city_id']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('trip_seats');
    }
};
