<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class teacher_db extends Model
{
    use HasFactory;
    protected $table = 'teacher_dbs';
    protected $fillable = ['name','lastname','sex','level','tel','classroom','status'];


    public function student_dbs()
    {
        return $this->hasMany(student_db::class);
    }
}
