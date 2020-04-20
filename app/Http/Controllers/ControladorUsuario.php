<?php

namespace App\Http\Controllers;

use App\Mail\ConfirmaUsuario;
use App\Usuario;
use App\UsuarioSistema;
use Carbon\Carbon;
use Vinkla\Hashids\Facades\Hashids;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class ControladorUsuario extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $usuarios = UsuarioSistema::paginate(10)->sortBy('nome');
        return view('usuarios',compact('usuarios'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('auth.register');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'nome' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:usuarios'],
            'telefone' => ['required', 'numeric'],
            'data_nascimento' => ['required'],
            'senha' => ['required', 'string', 'min:8', 'confirmed'],
            'senha_confirmation' => ['required', 'string'],
            'nivel' => ['required', 'string'],
        ]);

        $usuario = Usuario::create([
            'nome' => $request->nome,
            'email' => $request->email,
            'senha' => Hash::make($request->senha),
            'telefone' => $request->telefone,
            'data_nascimento' => $request->data_nascimento,
            'nivel' => $request->nivel,
            'status' => 0
        ]);

//        $hash = new Hashids();
        $idHash = Hashids::connection('main')->encode($usuario->id);

        $url = url('/usuario/confirmar/'.$idHash);

        Mail::to($usuario->email)
            ->send(new ConfirmaUsuario($url));


        $titulo = 'Seu usuário foi cadastrado!';
        $msg = 'Foi enviado para você um email para ativação do usuário. Acesse para poder solicitar o orçamento!';
        $cor = 'text-white';

        return view('redirect',compact('titulo','msg','cor'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function confirmar($id){
        $idDecoded = Hashids::connection('main')->decode($id);
        $usuario = Usuario::find($idDecoded[0]);
        if(isset($usuario) && !isset($usuario->email_verified_at)){
            $usuario->email_verified_at = Carbon::now();
            $usuario->save();
        }
    }
}
