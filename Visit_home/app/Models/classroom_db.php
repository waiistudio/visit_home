<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class classroom_db extends Model
{
    use HasFactory;
    protected $table = 'classroom_dbs';
    protected $fillable = ['classname','c_level','status'];

    public function teacher_dbs()
    {
        return $this->hasMany(teacher_db::class);
    }
}
