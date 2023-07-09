<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Worker extends Model
{
    use HasFactory;
    protected $table = 'workers';
    protected $guarded = false;


    public function profile()
    {
        return $this->hasOne (Profile::class);
    }

    public function position()
    {
        return $this->belongsTo(Position::class);
    }

    public function projects()
    {
        return $this->belongsToMany (Project::class);
    }

    public function avatar()
    {
        return $this->morphOne(Avatar::class, 'avatarable');
    }
}
