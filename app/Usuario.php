<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Vinkla\Hashids\Facades\Hashids;


class Usuario extends Model
{
   protected $table = 'usuarios';

    public function hashId(){
        return Hashids::encode($this->id);
    }
}
