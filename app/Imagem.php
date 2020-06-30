<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Imagem extends Model
{
    protected $table = 'imagens';

    function orcamento(){
        return $this->belongsTo('App\Orcamento','orcamentos_id','id');
    }
}
