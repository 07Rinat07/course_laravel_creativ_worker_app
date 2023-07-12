<?php

namespace App\Models;

use App\Events\Worker\CreatedEvent;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Worker extends Model
{
    use HasFactory;
    protected $table = 'workers';
    protected $guarded = false;

    protected static function booted()
    {
        static::created(function ($model) {
            event(new CreatedEvent($model));
        });
    }


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

    public function reviews()
    {
        return $this->morphMany(Review::class, 'reviewable');
    }

    public function tags()
    {
        return $this->morphToMany(Tag::class, 'taggable');
    }

}
