<?php

namespace App\Http\Repositories;

use Illuminate\Support\Facades\DB;

use Illuminate\Support\Facades\Hash;

class ProfileRepository
{
    
    public function getDetailProfile ($users_id){       
        
        $result = DB::table('user')
        ->where('id', $users_id)
        ->first();

        return $result;
    }

    public function updateEmailUser($request, $users_id)
    {
        $upd = DB::table('user')
            ->where('id', $users_id)
            ->update([
                'email' => $request->email
            ]);

        $result = $this->getDetailProfile($users_id);

        return $result;
    }

    public function updatePasswordUser($request, $users_id)
    {
        $upd = DB::table('user')
            ->where('id', $users_id)
            ->update([
                'password' => Hash::make($request->password)
            ]);

        $result = $this->getDetailProfile($users_id);

        return $result;
    }

    public function updateProfileUser($request, $users_id)
    {
        $data = [
            'alamat' => $request->alamat,
            'nomor_hp' => $request->nomor_hp,
            'nama' => $request->nama,
            'jenis_kelamin' => $request->jenis_kelamin
        ];

        $upd = DB::table('user')
            ->where('id', $users_id)
            ->update($data);

            $result = $this->getDetailProfile($users_id);

        return $result;
    }

    public function generateOrderCode($code)
    {
        $result = $code.date('y').date('h').date('d').mt_rand(100, 999); //TP20201260999

        return $result;
    }
}