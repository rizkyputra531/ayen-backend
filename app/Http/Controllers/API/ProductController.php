<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\ApiController;
use App\Http\Repositories\ProductRepository;
use App\Http\Controllers\Controller;
use App\Model\Product;
use Illuminate\Http\Request;

class ProductController extends ApiController
{
    public $productRepo;
    public function __construct(ProductRepository $productRepo)
    {
        $this->productRepo = $productRepo;
    }

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

    public function getProduct(Request $request)
    {
        $limit = $request->limit;
        $offset = $request->offset;

        $productData = $this->productRepo->getProduct($limit,$offset);

        if($productData->count() > 0){
            $result = $this->sendResponse(0, 'sukses', $productData);
        } else if ($productData->count() == 0) {
            $result = $this->sendResponse(0, 'Data Kosong');
        } else {
            $result = $this->sendError(2, 'Error');
        }

        return $result;
    }
}

