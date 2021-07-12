<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMooBaansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('moo_baans', function (Blueprint $table) {
            $table->increments('id');
            $table->string('id_baan');
            $table->string('baan_name');
            $table->enum('bann_area',['เขตพื้นที่บริการ','นอกเขตพื้นที่บริการ']);
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
        Schema::dropIfExists('moo_baans');
    }
}
