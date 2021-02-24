<?php

namespace App\Http\Repositories;

use App\Http\Resources\ProductCategoryResource;
use Illuminate\Support\Facades\DB;

class OrderRepository
{
    public function addOrder ($request, $users_id, $users_name, $users_email){
        
        $data = [
            'user_order_code' => $request->order_code,
            'uuid' => $request->order_code,
            'email' => $users_email,
            // 'order_detail_code' => generateFiledCode('DETAIL'),
            'id_user' => $users_id,
            'alamat_kirim' => $request->alamat,
            'nomor_hp' => $request->noHp,
            'ekspedisi_kirim' => $request->kurir,
            'nama' => $users_name,
            'transaction_total' => $request->total,
            'order_status' => 2,
            'transaction_status' => "PENDING"
        ];
        
        try {
            //code...
            $result = DB::table('transactions')
                                ->where('user_order_code', $request->order_code)
                                ->where('id_user', $users_id)
                                ->update($data);
                                return $result;
        } catch (\Throwable $th) {
            //throw $th;
            return false;
        }
    }
    public function getOrder ($users_id){       
        
        $result = DB::table('transactions')
        ->where('id_user', $users_id)
        ->where('order_status', '>=', 2)
        ->get();

        return $result;
    }

    public function generateOrderCode($code)
    {
        $result = $code.date('y').date('h').date('d').mt_rand(100, 999); //TP20201260999

        return $result;
    }
}