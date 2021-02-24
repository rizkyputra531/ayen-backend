<?php

namespace App\Http\Controllers;


// use App\Models\Transaction;
use App\Models\TransactionDetail;
use Illuminate\Http\Request;
use App\Model\Transaction;

use Illuminate\Support\Facades\DB;

class TransactionController extends Controller
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
        $items = Transaction::where('order_status', '!=' , 1)->orderby('id', 'DESC')->get();

        return view('pages.transactions.index')->with([
            'items' => $items
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $item = Transaction::with('details.product')->findOrFail($id);
        // $user = Transaction::with('user.transaction')->findOrFail($id);
        
        $dataBarang = DB::table('user_order')
        ->where('order_code', $item->user_order_code)
        ->get();

        return view('pages.transactions.show')->with([
            'item' => $item, 'dataBarang' => $dataBarang
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
        $item = Transaction::findOrFail($id);

        return view('pages.transactions.edit')->with([
            'item' => $item
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request->all();

        
        $item = Transaction::findOrFail($id);
        $item -> update($data);

        return redirect()->route('transaction.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function setStatus(Request $request, $id)
    {
        $request->validate([
            'status' => 'required:in:PENDING, SUCCESS, FAILED'
        ]);
        $status = $request->status;
        
       $dataTransaksi =  DB::table('transactions')
                    ->where('id', $id)
                    ->first(['id_user', 'user_order_code', 'order_status']);

        $dataBarang = DB::table('user_order')
        ->where('order_code', $dataTransaksi->user_order_code)
        ->get();


        if ( $status == 'SUKSES'){
            try {
                //code...
                foreach ($dataBarang as $barang){
              
                    $result = DB::table('products')
                            ->where('id', $barang->products_id)
                            ->decrement('stok', $barang->qty);
                            
                }
                $item = Transaction::findOrFail($id);
                $item -> transaction_status = $request->status;
                $item -> order_status = 3;
                $item -> save();
            } catch (\Throwable $th) {
                //throw $th;
               
            }
        } else {
            $item = Transaction::findOrFail($id);
            $item -> transaction_status = $request->status;
            $item -> order_status = 2;
            $item -> save();
        }

        

        

        return redirect()->route('transaction.index');
    }
}
