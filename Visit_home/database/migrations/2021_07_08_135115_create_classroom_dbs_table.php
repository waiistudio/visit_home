<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClassroomDbsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('classroom_dbs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('class_name');
            $table->enum('c_level',['อนุบาล','ประถมศึกษาตอนต้น','ประถมศึกษาตอนปลาย','มัธยมศึกษาตอนต้น']);
            $table->unsignedInteger('teacher_advice');
            $table->foreign('teacher_advice')->references('id')->on('teacher_dbs');
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
        Schema::dropIfExists('classroom_dbs');
    }
}
