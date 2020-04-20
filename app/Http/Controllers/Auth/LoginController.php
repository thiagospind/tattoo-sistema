<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    public function username()
    {
        return 'email';
    }



    public function authenticated(Request $request)
    {
        $credentials = [
            'email' => $request->email,
            'password' => $request->password,
            'status' => 1
        ];
            //$request->only('email', 'senha');
//        $email = $request->email;
//        $password = $request->password;

        if (Auth::attempt($credentials)) {
//            if(!isset(Auth::user()->email_verified_at)){
//                Auth::logout();
//                return redirect('/login')->with('msg','Por favor, confirme o seu email!');
//            }

            return redirect()->intended('/');
        } else {
            Auth::logout();
            return redirect('/');
        }

        $usuario = Auth::user();
        echo $usuario;
    }

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
