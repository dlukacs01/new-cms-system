<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    //

    // needed for mass assignment (mass creating data)
    protected $guarded = []; // easier to use than fillable

    // each post is going to have a user - One To Many (Inverse)
    public function user(){

        return $this->belongsTo(User::class);

    }

    // changing data BEFORE going to db (MUTATOR)
//    public function setPostImageAttribute($value){
//
//        $this->attributes['post_image']=asset($value);
//
//    }

    // ACCESSOR (returning data)
    public function getPostImageAttribute($value) {

        if (strpos($value, 'https://') !== FALSE || strpos($value, 'http://') !== FALSE) {
            return $value;
        }
        return asset('storage/' . $value);

    }

}
