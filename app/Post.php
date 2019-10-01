<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    public function category(){
    	return $this->belongsTo('App\Category');
    	//$this means class Post // belongsTo means one post has one category
    }

    public function comments(){
    	return $this->hasMany('App\Comment');
    	// hasMany means one post have many comments
    }
}
