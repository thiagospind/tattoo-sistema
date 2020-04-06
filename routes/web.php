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
    return view('index');
});

Route::get('/home',function (){
    return view('index');
});

Route::get('/usuario','ControladorUsuario@create');
Route::post('/usuario','ControladorUsuario@store');
Route::get('/usuario/editar/{idUsuario}','ControladorUsuario@show');
Route::get('/usuario/excluir/{idUsuario}','ControladorUsuario@destroy');
Route::get('/usuario/confirmar/{id}','ControladorUsuario@confirmar');

Route::get('/confirmausuario', function () {
    //$invoice = App\Invoice::find(1);

    return new App\Mail\ConfirmaUsuario('usuario/confirmar/1');
});

Route::group(['middleware'=>['auth']],function() {
    Route::get('/orcamentos','ControladorOrcamento@index');
    Route::post('/orcamentos/salvar','ControladorOrcamento@update');
    Route::any('/orcamentos/pesquisar','ControladorOrcamento@pesquisar');
    Route::get('/logout','HomeController@logout');
    Route::get('/usuarios','ControladorUsuario@index');
    Route::post('/usuario/editar','ControladorUsuario@update');
    Route::get('/orcamento','ControladorOrcamento@create');
    Route::post('/orcamento','ControladorOrcamento@store');
});



Route::get('/redirect', function(){
    $cor = '';
    $msg = 'Obrigado por entrar em contato!';
    $titulo = 'Você será redirecionado em alguns segundos.';
    return view('redirect',compact('cor','msg','titulo'));
});

Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');
