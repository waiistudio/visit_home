<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentDbsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('student_dbs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('std_id');
            $table->string('c_id')->nullable();
            $table->string('name');
            $table->unsignedInteger('teacher_advice');
            $table->foreign('teacher_advice')->references('id')->on('teacher_dbs');
            $table->unsignedInteger('classroom');
            $table->foreign('classroom')->references('id')->on('classroom_dbs');
            $table->enum('delete', ['true','false'])->default('true');
            $table->enum('status',['enable','disable'])->default('enable');
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
        Schema::dropIfExists('student_dbs');
    }
}
