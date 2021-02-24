<?php

namespace App\Http\Controllers;

use App\Model\Admin;
use Illuminate\Http\Request;
use App\Http\Requests\AdminRequest;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
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
        $items = Admin::all();

        return view('pages.admin.index')->with([
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
        return view('pages.admin.create');
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
            'username' => 'required|min:3|unique:admin',
            'password' => 'required|string|min:3|confirmed'

        ]);

        Admin::createByRequest($request);
        return redirect()->route('admin.index');
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
        $admin = Admin::findOrFail($id);

        return view('pages.admin.show')->with([
            'admin' => $admin
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
        
        $admin = Admin::findOrFail($id);

        return view('pages.admin.edit')->with([
            'admin' => $admin
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Admin $admin)
    {
        // $data = $request->all();

        $this->validate($request, [
            'nama' => 'required|min:3|Max:255',
            'jenis_kelamin' => 'required:in:Pria,Wanita',
            'nomor_hp' => 'required',
            'alamat' => 'required',
            'username' => 'required|min:3|unique:admin,username,'.$admin->id,
            'password' => ($request->password ? 'string|min:3|confirmed' : ''),

        ]);
        
        $admin->updateByRequest($request);

        return redirect()->route('admin.index');
        
        // $item = Admin::findOrFail($id);

        // $item -> update([
        //     'nama' => $request->nama,
        //     'jenis_kelamin' => $request->jenis_kelamin,
        //     'nomor_hp' => $request->nomor_hp,
        //     'alamat' => $request->alamat,
        //     'username' => $request->username,
        //     'password' => bcrypt($request->password)
        // ]);

        // return redirect()->route('admin.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $item = Admin::findOrFail($id);
        $item -> delete();

        return redirect()->route('admin.index');
    }
}
