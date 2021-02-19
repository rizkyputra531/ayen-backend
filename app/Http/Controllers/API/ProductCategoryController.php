<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\ApiController;
use App\Http\Repositories\ProductCategoryRepository;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ProductCategoryController extends ApiController
{
    public $productCategoryRepo;
    public function __construct(ProductCategoryRepository $productCategoryRepo)
    {
        $this->productCategoryRepo = $productCategoryRepo;
    }

    public function getProductCategory(Request $request)
    {
        $limit = $request->limit;
        $offset = $request->offset;
    

        $productCatData = $this->productCategoryRepo->getProductCategory($limit,$offset);

        if($productCatData->count() > 0){
            $result = $this->sendResponse(0, 'sukses', $productCatData);
        } else if ($productCatData->count() == 0) {
            $result = $this->sendResponse(0, 'Data Kosong');
        } else {
            $result = $this->sendError(2, 'Error');
        }

        return $result;
    }
}

