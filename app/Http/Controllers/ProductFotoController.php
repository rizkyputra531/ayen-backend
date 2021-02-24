<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Product;
use storage;

class ProductFotoController extends Controller
{
    public function uploadfoto(Request $request, $id)
    {
        {
        $items = Product::all();

        if(Storage::exists($items->foto)){
            Storage::delete($items->foto);
            /*
                Delete Multiple File like this way
                Storage::delete(['upload/test.png', 'upload/test2.png']);
            */
        }else{
            dd('File does not exists.');
        }
    }
    }
}
