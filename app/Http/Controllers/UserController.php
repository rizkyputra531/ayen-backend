<?php

namespace App\Http\Controllers;

use App\Model\User;
use Illuminate\Http\Request;
// use App\Http\Requests\AdminRequest;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $items = User::all();

        return view('pages.user.index')->with([
            'items' => $items
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.user.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'nama' => 'required|min:3|max:255',
            'jenis_kelamin' => 'required:in:Pria,Wanita',
            'nomor_hp' => 'required|numeric|unique:admin,nomor_hp',
            'alamat' => 'required|max:255',
            'email' => 'required|min:3|unique:user',
            'password' => 'required|string|min:3|confirmed'

        ]);

        User::createByRequest($request);
        return redirect()->route('user.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::findOrFail($id);

        return view('pages.user.show')->with([
            'user' => $user
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::findOrFail($id);

        return view('pages.user.edit')->with([
            'user' => $user
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $this->validate($request, [
            'nama' => 'required|min:3|Max:255',
            'jenis_kelamin' => 'required:in:Pria,Wanita',
            'nomor_hp' => 'required',
            'alamat' => 'required',
            'email' => 'required|min:3|unique:user,email,'.$user->id,
            'password' => ($request->password ? 'string|min:3|confirmed' : ''),

        ]);
        
        $user->updateByRequest($request);

        return redirect()->route('user.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $item = User::findOrFail($id);
        $item -> delete();

        return redirect()->route('user.index');
    }
}
