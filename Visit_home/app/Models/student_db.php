<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class student_db extends Model
{
    use HasFactory;
    protected $table = 'student_dbs';
    protected $fillable = ['std_id','c_id','name','teacher_advice','classroom','delete','status'];

    public function classroom_dbs()
    {
        return $this->hasOne(classroom_db::class);
    }
}
