<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;
use Vinkla\Hashids\HashidsManager;

class UsuarioSistema extends Model
{
    protected $table = 'usuarios';
    protected $hashids;

    public function __construct(HashidsManager $hashids)
    {
        $this->hashids = $hashids;
    }

    public function hashId($id)
    {
        $this->hashids->encode($id);
    }
}

App::make('UsuarioSistema')->hashId();
