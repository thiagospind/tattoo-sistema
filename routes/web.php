<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/orcamento','ControladorOrcamento@create');
Route::post('/orcamento','ControladorOrcamento@store');

Route::get('/orcamentos','ControladorOrcamento@index');
Route::post('/orcamentos/salvar','ControladorOrcamento@update');
Route::any('/orcamento/pesquisar','ControladorOrcamento@pesquisar');

Route::get('/usuario','ControladorUsuario@create');
Route::get('/usuarios','ControladorUsuario@index');
Route::post('/usuario','ControladorUsuario@store');
Route::post('/usuario/editar','ControladorUsuario@update');
Route::get('/usuario/editar/{idUsuario}','ControladorUsuario@show');
Route::get('/usuario/excluir/{idUsuario}','ControladorUsuario@destroy');

Route::get('/home',function (){
        return view('index');
});

Route::get('/redirect', function(){
   return view('redirect');
});
//Route::group(['middleware'=>['auth']],function(){
//});

//Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');
