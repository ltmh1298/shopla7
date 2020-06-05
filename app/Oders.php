<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Oders extends Model
{
    protected $table ='oders';

    public function user()
    {
        return $this->belongsTo('App\User','u_id');
    }

    public function oders_detail()
	{
		return $this->hasMany('App\Oders_detail','o_id');
	}
}
