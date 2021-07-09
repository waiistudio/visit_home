<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTeacherDbsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teacher_dbs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('last_name');
            $table->enum('sex',['male','female']);
            $table->enum('level',['ครูอัตราจ้าง','ครูพี่เลี้ยง','ครูผู้ช่วย','ครู','ครูชำนาญการ','ครูชำนาญการพิเศษ','ครูเชี่ยวชาญ','ผู้อำนวยการ'])->default('ครู');
            $table->string('tel');
            $table->unsignedInteger('classroom');
            $table->foreign('classroom')->references('id')->on('classroom_dbs');
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
        Schema::dropIfExists('teacher_dbs');
    }
}
