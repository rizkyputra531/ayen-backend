<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Admin;
use Illuminate\Support\Facades\Auth;
use Session;
// use Auth;

class AuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    
    public function getLogin()
    {
        
        return view ('auth.login');
    }

    public function postLogin(Request $request)
    {
        if (!auth()->attempt(['username' => $request->username, 'password' => $request->password])) {
            return redirect()->back();
        }
        return redirect()->route('dashboard');
        
    }

    public function getRegister()
    {
        return view('auth.register');
    }

    protected function guard()
    {
        return Auth::guard('web');
    }


    public function postRegister(Request $request)
    {
        $this->validate($request, [
            'nama' => 'required|min:3',
            'jenis_kelamin' => 'required:in:Pria,Wanita',
            'nomor_hp' => 'required',
            'alamat' => 'required',
            'username' => 'required|min:4|unique:admin',
            'password' => 'required|min:4|confirmed'

        ]);

        Admin::create([
            'nama' => $request->nama,
            'jenis_kelamin' => $request->jenis_kelamin,
            'nomor_hp' => $request->nomor_hp,
            'alamat' => $request->alamat,
            'username' => $request->username,
            'password' => bcrypt($request->password)
        ]);

        return redirect()->route('login');
    }

    public function logout(Request $request)
    {
        $this->guard()->logout();
        Session::flush();

        return redirect()->route('login');
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
   
}
