<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Vinkla\Hashids\Facades\Hashids;


class Usuario extends Authenticatable
{
   protected $table = 'usuarios';

    use Notifiable;

    public function getAuthPassword()
    {
        return $this->senha;
    }

    protected $fillable = [
        'nome','telefone','email','senha','nivel','status','data_nascimento','email_verified_at'
    ];

    protected $hidden = [
        'senha', 'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}
