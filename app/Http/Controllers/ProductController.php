<?php

namespace App\Http\Controllers;

use App\Model\ProductCategory;
use App\Model\Product;

use App\Http\Requests\ProductRequest;
use App\Http\Requests\ProductUpdateRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Storage;

class ProductController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $items = Product::all();
        $items = Product::orderby('id', 'DESC')->get();

        return view('pages.products.index')->with([
            'items' => $items
        ]);
        // return view('pages.products.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $products = ProductCategory::all(); //memanggil table productcategory di halaman product

        return view('pages.products.create')->with([
             'products' => $products //menampilkan isi table productcategory ke dalam halaman product
         ]);
        // return view('pages.products.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        $data = $request->all();
        // $namaFile = time().rand(100,999).".".$data['foto']->getClientOriginalExtension();
        $data['slug'] = Str::slug($request->nama);
        
        $imageName= $data['foto']->getClientOriginalName();
       
        $data['foto'] = $request->file('foto')->storeAs(
            'assets/product', $imageName, 'public');
        $data['image_name'] = $imageName;
        Product::create($data);
        
        return redirect()->route('products.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $item = Product::findOrFail($id);
        

        return view('pages.products.show')->with([
            'item' => $item,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $products = ProductCategory::all(); //memanggil table productcategory di halaman product


        $item = Product::findOrFail($id);
        

        return view('pages.products.edit')->with([
            'item' => $item,
            'products' => $products
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    


    public function update(ProductUpdateRequest $request, $id)
    {
        
        $data = $request->all();
            
        // if ($request->user()->foto){
        //     Storage::delete($request->user()->foto);
        // }
        // $data['foto'] = $request->file('foto')->store(
        //     'assets/product', 'public'
        // );


        $data['slug'] = Str::slug($request->nama);
        
        
        $item = Product::findOrFail($id);
        $item -> update($data);

        return redirect()->route('products.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $item = Product::findOrFail($id);
        $item -> delete();

        return redirect()->route('products.index');
    }

    // public function updatefoto(Request $request, $id)
    // {
        

        
    //     $data = $request->all();

        // if ($request->user()->foto){
        //     Storage::delete($request->user()->foto);
        // }
        // $data['foto'] = $request->file('foto')->store(
        //     'assets/product', 'public'
        // );

    //     $data['slug'] = Str::slug($request->nama);

        
    //     $item = Product::findOrFail($id);
    //     $item -> update($data);

    //     return redirect()->route('products.index');
    // }

    
}
