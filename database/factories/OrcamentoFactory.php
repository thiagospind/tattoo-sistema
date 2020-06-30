<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Orcamento;
use Faker\Generator as Faker;

$factory->define(Orcamento::class, function (Faker $faker) {
    return [
        'nome' => $faker->name,
        'telefone' => $faker->phoneNumber,
        'email' => $faker->freeEmail,
        'altura' => '10',
        'largura' => '10',
        'parte_corpo' => $faker->locale,
        'outra_parte' => $faker->locale,
        'cor' => '',
        'descricao' => $faker->text(255),
        'imagem_exemplo' => $faker->url,
        'status' => 'Novo'
    ];
});
