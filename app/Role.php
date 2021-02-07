<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    //

    // needed for mass assignment
    protected $guarded = [];

    public function permissions(){

        return $this->belongsToMany(Permission::class);

    }

    public function users(){

        return $this->belongsToMany(User::class);

    }

}
