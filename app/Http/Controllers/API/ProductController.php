<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Model\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function all(Request $request){

        // $id = $request -> input('id');
        $product = Product::all();

        if($product)
            return ResponseFormatter::success($product,'Data Produk Berhasil Di Ambil');
        else 
            return ResponseFormatter::error(null,'Data Produk Tidak Ada', 404);


        if($nama)
            $product->where('nama', 'like', '%' . $nama . '%');

        if($merk)
            $product->where('merk', 'like', '%' . $merk . '%');

        if($price_from)
            // $price_from = '145000';
            $product->where('harga', '>=', $price_from);

        if($price_to)
            $product->where('harga', '<=', $price_to);
        
        


    }
}
