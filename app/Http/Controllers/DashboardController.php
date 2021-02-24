<?php

namespace App\Http\Controllers;

use App\Model\Transaction;
use App\Model\TransactionDetail;
use Illuminate\Http\Request;

class DashboardController extends Controller
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
    
    public function index()
    {
        $income = Transaction::where('transaction_status','SUKSES')->sum('transaction_total');
        $sales = Transaction::where('transaction_status','SUKSES')->count('transaction_status');
        $items = Transaction::orderBy('id', 'Desc')->take(5)->get();
        $pie = [
            'pending' => Transaction::where('transaction_status', 'PENDING')->count(),
            'gagal' => Transaction::where('transaction_status', 'GAGAL')->count(),
            'sukses' => Transaction::where('transaction_status', 'SUKSES')->count(),
            
        ];

        return view('pages.dashboard')->with([
            'income' => $income,
            'sales' => $sales,
            'items' => $items,
            'pie' => $pie,
        ]);
    }
}
