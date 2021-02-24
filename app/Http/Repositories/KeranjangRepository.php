<?php

namespace App\Http\Repositories;

use App\Http\Resources\KeranjangResource;
use Illuminate\Support\Facades\DB;

class KeranjangRepository
{
    public function tambahKeranjang($request, $users_id, $users_name)
    {
        $order_code = $this->generateOrderCode('ORDER - ');
        $data = [
            'order_code' => ($request->order_code == '') ? $order_code : $request->order_code,
            // 'order_detail_code' => generateFiledCode('DETAIL'),
            'user_id' => $users_id,
            'products_id' => $request->id,
            'products_name' => $request->nama,
            'products_image' => $request->foto_url,
            'kategori' => $request->kategori,
            'user_name' => $users_name,
            'price' => $request->harga,
            'price_total' => $request->harga,
            'stok' => $request->stok,
            'order_status' => 1,
            'satuan' => $request->satuan,
            'qty' => 1
        ];
        $transactionData = [
            'user_order_code' => $data['order_code'],
            'id_user' => $users_id,
            'nama' => $users_name,
            'order_status' => 1,
        ];

        
        $check = $this->getInfoTransaksi($data);
        if ($check) {
            $dataKeranjang = $this->getInfoKeranjang($data);
            if($dataKeranjang){
                $qty = $dataKeranjang->qty + 1;
                $total = $qty * $dataKeranjang->price;
                $dataUpdate = [
                    'qty'=>$qty,
                    'price_total'=>$total
                ];
    
               DB::table('user_order')
                            ->where('order_code', $dataKeranjang->order_code)
                            ->where('products_id', $dataKeranjang->products_id)
                            ->update($dataUpdate);
            } else {
                DB::table('user_order')->insert($data);
            }
           
        } else{
           DB::table('user_order')->insert($data);
            DB::table('transactions')->insert($transactionData);
        }

        $keranjang = $this->getKeranjang($data);
        $transaksi = $this->getInfoTransaksi($data);

        $result = (object) [
            'transaction' => $transaksi,
            'user_order_code' => $transaksi->user_order_code,
            'id_user' => $transaksi->id_user,
            'keranjang' => $keranjang
        
        ];
        

        return $result;
    }

    public function increamentKeranjang($request, $users_id)
    {
        
        $data = [
            'order_code' => $request->order_code,
            'user_id' => $users_id,
            'products_id' => $request->id,
            'price' => $request->price,
            'qty' => $request->qty,
        ];


        $qty = $data['qty'] - 1;
        $total = $qty * $data['price'];
        $dataUpdate = [
            'qty'=>$qty,
            'price_total'=>$total
        ];

        DB::table('user_order')
                    ->where('products_id', $request->id)
                    ->where('order_code', $request->order_code)
                    ->update($dataUpdate);

        $total = DB::table('user_order')
        ->where('order_code', $request->order_code)
        ->sum('price_total');
       
        $keranjang = $this->getKeranjang($data);
        $transaksi = $this->getInfoTransaksi($data);

        $result = (object) [
            'total_amount' => $total,
            'transaction' => $transaksi,
            'user_order_code' => $request->order_code,
            'id_user' => $transaksi->id_user,
            'keranjang' => KeranjangResource::collection($keranjang)        
        ];
        

        return $result;
    }
    public function removeKeranjang($request, $users_id)
    {
        
        $data = [
            'order_code' => $request->order_code,
            'user_id' => $users_id,
            'products_id' => $request->id,
        ];

        DB::table('user_order')
                    ->where('products_id', $request->id)
                    ->where('order_code', $request->order_code)
                    ->delete();

        $total = DB::table('user_order')
        ->where('order_code', $request->order_code)
        ->sum('price_total');
       
        $keranjang = $this->getKeranjang($data);
        $transaksi = $this->getInfoTransaksi($data);

        $result = (object) [
            'total_amount' => $total,
            'transaction' => $transaksi,
            'user_order_code' => $request->order_code,
            'id_user' => $transaksi->id_user,
            'keranjang' => KeranjangResource::collection($keranjang)        
        ];
        

        return $result;
    }

    public function decreamentKeranjang($request, $users_id)
    {
        
        $data = [
            'order_code' => $request->order_code,
            'user_id' => $users_id,
            'products_id' => $request->id,
            'price' => $request->price,
            'qty' => $request->qty,
        ];


        $qty = $data['qty'] + 1;
        $total = $qty * $data['price'];
        $dataUpdate = [
            'qty'=>$qty,
            'price_total'=>$total
        ];

        DB::table('user_order')
                    ->where('products_id', $request->id)
                    ->where('order_code', $request->order_code)
                    ->update($dataUpdate);

        $total = DB::table('user_order')
        ->where('order_code', $request->order_code)
        ->sum('price_total');
       
        $keranjang = $this->getKeranjang($data);
        $transaksi = $this->getInfoTransaksi($data);

        $result = (object) [
            'total_amount' => $total,
            'transaction' => $transaksi,
            'user_order_code' => $request->order_code,
            'id_user' => $transaksi->id_user,
            'keranjang' => KeranjangResource::collection($keranjang)        
        ];
        

        return $result;
    }

    public function KeranjangUser($request, $users_id){
        $data = [
            'order_code' => $request->order_code,
            'user_id' => $users_id
        ];
        $keranjang = $this->getKeranjang($data);

        $total = DB::table('user_order')
        ->where('order_code', $request->order_code)
        ->sum('price_total');

        $result = (object) [
            'total_amount' => $total,
            'barang' => KeranjangResource::collection($keranjang)        
        ];      

        return $result;
    }

    public function getInfoTransaksi($data)
    {
        return DB::table('transactions')
                    ->where('id_user', $data['user_id'])
                    ->where('order_status', 1)
                    ->first(['id_user', 'user_order_code', 'order_status']);
    }

    public function getKeranjang($data)
    {
        return DB::table('user_order')
                    ->where('user_id', $data['user_id'])
                    ->where('order_code', $data['order_code'])
                    ->where('order_status', 1)
                    ->get();
    }

    public function getInfoKeranjang($data)
    {
        $result = DB::table('user_order')
                    ->where('user_id', $data['user_id'])
                    ->where('order_code', $data['order_code'])
                    ->where('products_id', $data['products_id'])
                    ->where('order_status', 1)
                    ->first();

        return $result;
    }

    public function generateOrderCode($code)
    {
        $result = $code.date('y').date('h').date('d').mt_rand(100, 999); //TP20201260999

        return $result;
    }
}