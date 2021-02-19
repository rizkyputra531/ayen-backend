<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\ApiController;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Validator;

class RegisterController extends ApiController
{
    public function registerUser(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|string|email|unique:user',
            'nama' => 'required|string',
            'nomor_hp' => 'required|string',
            'password' => 'required|min:8',
            'password_confirmation' => 'required_with:password|same:password|min:8',
        ]);

        if ($validator->fails()) {
            $validate = $this->validationMessage($validator->errors());
            return $this->errorAuth(1,  $validate);
        }
        $dataLogin = ['email' => $request->email, 'password' => $request->password];
        $thisData = [
            'nama' =>  $request->nama,
            'nomor_hp' =>  $request->nomor_hp,
            'email' =>  $request->email,
            'password' => Hash::make($request->password)
        ];

        try {
            $insertRegis = DB::table('user')->insert($thisData);
        } catch (\Exception $e) {
            return $this->sendError(2, $e, (object) array());
        }

        // automatic login
        Auth::guard('api-member')->attempt($dataLogin);
        
        $user = Auth::guard('api-member')->user();
        $success['token'] = $user->createToken($user->email)->accessToken;
        $success['name']  = $user->nama;
        $success['email']  = $user->email;
        $success['id']  = $user->user()->id;
        return $this->sendResponse(0, "Berhasil Registrasi", $success);
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);

        if ($validator->fails()) {
            return $this->sendError(1, 1, $validator->errors());
        }

        $credentials = request(['email', 'password']);

        if (!Auth::guard('api-member')->attempt($credentials)) {
            return $this->errorAuth(2, "Email atau Password Salah", (object) array());
        }
        $user =   Auth::guard('api-member')->user();
        $success['token'] = $user->createToken($user->email)->accessToken;
        $success['name']  = $user->nama;
        $success['email']  = $user->email;
        $success['id']  = $user->id;
 
        return $this->sendResponse(0, "Login Berhasil", $success);
    }

    public function validationMessage($validation)
    {
        $validate = collect($validation)->flatten();
        return $validate->values()->all();
    }
}