<?php

namespace App\Http\Controllers;

use App\Imagem;
use App\Orcamento;
use App\Usuario;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Vinkla\Hashids\Facades\Hashids;

class ControladorOrcamento extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $filtro = null;
        $valor = null;
        $data_inicio = null;
        $data_fim = null;

        $orcamento = Orcamento::where('status','=','Novo')
            ->orderBy('created_at','desc')
            ->paginate(5);

        return view('visualizaOrcamento',compact('orcamento','filtro','valor','data_inicio','data_fim'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($idHash)
    {
        if(Auth::check()){
            //$idUsuario = Hashids::decode($id);
            //$usuario = Usuario::find($idUsuario);

            return view('orcamento',compact('idHash'));
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
//        try {
            $request->validate([
//                'nome' => 'required|max:255',
//                'telefone' => 'required|numeric',
//                'email' => 'email|nullable',
                'parte_corpo' => 'required',
                'outra_parte' => 'required_if:parte_corpo,Outra',
                'tamanho' => 'required',
                'cor' => 'required',
                'arquivos.*' => 'nullable|image|max:5120',
                'descricao' => 'required|string',
                'status' => 'Novo',
                'usuarios_id' => 'required'
            ]);

            $arquivos = $request->file('arquivos');

            $orcamento = new Orcamento();

            $orcamento->tamanho_tattoo = $request->tamanho;
            $orcamento->parte_corpo = $request->parte_corpo;
            $orcamento->outra_parte = $request->outra_parte;
            $orcamento->cor = $request->cor;
            $orcamento->descricao = $request->descricao;
            $orcamento->usuarios_id = Hashids::decode($request->usuarios_id)[0];

//            if (isset($arquivos)) {
//                $path = $request->file('arquivos')->store('exemplos');
//                $orcamento->imagem_exemplo = $path;
//            }
            $orcamento->status = 'Novo';

            $orcamento->save();

            foreach ($arquivos as $arquivo){
                $imagem = new Imagem();
                $imagem->orcamentos_id = $orcamento->id;
                $imagem->imagem_exemplo = $arquivo->store('exemplos');
                $imagem->save();
            }
//            $titulo = 'Seu orçamento foi recebido!';
//            $msg = 'Em breve entraremos em contato com maiores informações sobre a sua tatuagem!
//                    Muito obrigado pelo contato. Você será redirecionado para a página principal em cinco segundos!';
//            $cor = 'text-white';

//            return view('redirect',compact('titulo','msg','cor'));
            return redirect('/orcamento/lista/'.$request->usuarios_id);
//        } catch (\Exception $exception){
//
//        }
    }

    public function update(Request $request){
        $request->validate([
            'valor' => 'required|numeric',
            'observacao' => 'nullable|max:255'
        ]);

        $id = $request->id;
        $valor = $request->valor;
        $observacao = $request->observacao;

        $orcamento = Orcamento::find($id);
        if(isset($orcamento)){
            $orcamento->valor = $valor;
            $orcamento->observacao = $observacao;
            $orcamento->save();

            return $this->pesquisar($request);
        } else {
            return redirect()->back()->with('msg','Orçamento não encontrado!');
        }
    }

    public function pesquisar(Request $request){
        $filtro = $request->filtro;
        $valor = $request->valor;
        $data_inicio = $request->data_inicio;
        $data_fim = $request->data_fim;

        if($filtro === 'nome' || $filtro === 'telefone' || $filtro === 'email' || $filtro === 'descricao'){
            $orcamento = Orcamento::where($filtro,'like','%'.$valor.'%');
        } else if($filtro === 'parte_corpo'){
            $orcamento = Orcamento::where('parte_corpo','like','%'.$valor.'%')
                ->orWhere('outra_parte','like',$valor.'%');
        } else if(!isset($filtro)){
            $orcamento = Orcamento::where('status','=','Novo');
        }

        if(isset($data_inicio) && isset($data_fim)){
            $orcamento = $orcamento->whereBetween('created_at',[$data_inicio,$data_fim]);
        }

        $orcamento = $orcamento->orderBy('created_at','desc')
            ->paginate(5);

        return view('visualizaOrcamento',compact('orcamento','filtro','valor','data_inicio','data_fim'));

    }

    public function listaOrcamento($idUsuario){
//        $orcamentos = Orcamento::where('usuarios_id','=',$idUsuario)
//            ->orderBy('created_at','desc')
//            ->get();
        $idDecoded = Hashids::decode($idUsuario)[0];
        $orcamentos = Orcamento::join('usuarios','usuarios.id','=','orcamentos.usuarios_id')
            ->leftJoin('financeiros','financeiros.orcamentos_id','=','orcamentos.id')
            ->select('orcamentos.tamanho_tattoo','orcamentos.parte_corpo','orcamentos.outra_parte','orcamentos.cor',
                    'orcamentos.descricao','orcamentos.imagem_exemplo','orcamentos.status','orcamentos.created_at')
            ->where('usuarios_id','=',$idDecoded)
            ->orderBy('orcamentos.created_at','desc')
            ->get();
        $idHash = $idUsuario;
        //Hashids::connection('main')->encode($idUsuario);
        return view('listaOrcamento',compact('orcamentos','idHash'));
    }
}
