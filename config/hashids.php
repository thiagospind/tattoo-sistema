<?php

/**
 * Copyright (c) Vincent Klaiber.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 * @see https://github.com/vinkla/laravel-hashids
 */

return [

    /*
    |--------------------------------------------------------------------------
    | Default Connection Name
    |--------------------------------------------------------------------------
    |
    | Here you may specify which of the connections below you wish to use as
    | your default connection for all work. Of course, you may use many
    | connections at once using the manager class.
    |
    */

    'default' => 'main',

    /*
    |--------------------------------------------------------------------------
    | Hashids Connections
    |--------------------------------------------------------------------------
    |
    | Here are each of the connections setup for your application. Example
    | configuration has been included, but you may add as many connections as
    | you would like.
    |
    */

    'connections' => [

        'main' => [
            'salt' => '6s54fw9e8r7@!s6d5f4',
            'length' => 8,
        ],

        'alternative' => [
            'salt' => 'your-salt-string',
            'length' => 'your-length-integer',
        ],

        App\Orcamento::class => [
            'salt' => \App\Orcamento::class.'sd56f4w89e7rs654d98e7tr',
            'length' => 6,
        ],

        App\Usuario::class => [
            'salt' => App\Usuario::class.'sd56f4w89e7rs654d98e7tr',
            'length' => 6,
        ],



    ],

];
