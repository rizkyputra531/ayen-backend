<?php

namespace App\Http\Repositories;

use App\Http\Resources\ProductResource;
use Illuminate\Support\Facades\DB;

class ProductRepository
{
    public function getProduct($limit = 10, $offset = 0)
    {
        $select = [
            'products.id',
            'products.nama',
            'products.kategori',
            'products.stok',
            'products.foto',
            'products.image_name',
            'products.harga',
            'products.satuan',
            'products.diskon',
            'products.deskripsi'
        ];

        $thisProduct = DB::table('products')
                        ->where('product_status', 1)
                        ->where('stok', '!=', 0)
                        ->select($select);

        if($limit == null){
            $result = $thisProduct->get();
        } else {
            $result = $thisProduct
                        ->limit($limit)
                        ->offset($offset)
                        ->get();
        }
        $dataProduct = ProductResource::collection($result);
        return $dataProduct;
    }
}