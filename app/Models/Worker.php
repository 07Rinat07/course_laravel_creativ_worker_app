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
        return $this->hasOne (Profile::class, 'worker_id', 'id');
    }

    public function position()
    {
        return $this->belongsTo(Position::class, 'position_id', 'id');
    }

    public function projects()
    {
        return $this->belongsToMany (Project::class, 'project_workers', 'worker_id ', 'project_id');
    }
}
