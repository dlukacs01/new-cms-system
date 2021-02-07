<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    //

    // needed for mass assignment
    protected $guarded = [];

    public function roles(){

        return $this->belongsToMany(Role::class );

    }

    public function users(){

        return $this->belongsToMany(User::class);

    }

}
