<?php

namespace App\Http\Repositories;

use App\Http\Resources\ProductCategoryResource;
use Illuminate\Support\Facades\DB;

class ProductCategoryRepository
{
    public function getProductCategory($limit = 10, $offset = 0)
    {
        $select = [
            'productcategory.id',
            'productcategory.nama',
        ];

        $thisProduct = DB::table('productcategory')
                        ->select($select);

        if($limit == null){
            $result = $thisProduct->get();
        } else {
            $result = $thisProduct
                        ->limit($limit)
                        ->offset($offset)
                        ->get();
        }
        $dataProduct = ProductCategoryResource::collection($result);
        return $dataProduct;
    }
}