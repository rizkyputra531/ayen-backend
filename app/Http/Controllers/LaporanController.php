<?php

namespace App\Http\Controllers;


use PDF;
use Carbon\Carbon;
// use App\Models\Transaction;
use App\Models\TransactionDetail;
use Illuminate\Http\Request;
use App\Model\Transaction;
use Maatwebsite\Excel\Facades\Excel;

use App\Exports\ReportExport;


class LaporanController extends Controller
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
        $items = Transaction::where('order_status', 3)->orderby('id', 'DESC')->get();


        return view('pages.laporan.index')->with([
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

        return view('pages.transactions.show')->with([
            'item' => $item
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
    public function exportTransaction(Request $req)
    {
       
        if (true) {
            $jenis_laporan = $req->jns_laporan;
            $current_time = Carbon::now()->isoFormat('Y-MM-DD') . ' 23:59:59';
            if ($jenis_laporan == 'period') {
                if ($req->period == 'minggu') {
                    $last_time = Carbon::now()->subWeeks($req->time)->isoFormat('Y-MM-DD') . ' 00:00:00';
                    $transactions = Transaction::select('transactions.*')
                        ->whereBetween('created_at', array($last_time, $current_time))
                        ->get();
                    $array = array();
                    foreach ($transactions as $no => $transaction) {
                        array_push($array, $transactions[$no]->created_at->toDateString());
                    }
                    $dates = array_unique($array);
                    rsort($dates);
                    $tgl_awal = $last_time;
                    $tgl_akhir = $current_time;
                } elseif ($req->period == 'bulan') {
                    $last_time = Carbon::now()->subMonths($req->time)->isoFormat('Y-MM-DD') . ' 00:00:00';
                    $transactions = Transaction::select('transactions.*')
                        ->whereBetween('created_at', array($last_time, $current_time))
                        ->get();
                    $array = array();
                    foreach ($transactions as $no => $transaction) {
                        array_push($array, $transactions[$no]->created_at->toDateString());
                    }
                    $dates = array_unique($array);
                    rsort($dates);
                    $tgl_awal = $last_time;
                    $tgl_akhir = $current_time;
                } elseif ($req->period == 'tahun') {
                    $last_time = Carbon::now()->subYears($req->time)->isoFormat('Y-MM-DD') . ' 00:00:00';
                    $transactions = Transaction::select('transactions.*')
                        ->whereBetween('created_at', array($last_time, $current_time))
                        ->get();
                    $array = array();
                    foreach ($transactions as $no => $transaction) {
                        array_push($array, $transactions[$no]->created_at->toDateString());
                    }
                    $dates = array_unique($array);
                    rsort($dates);
                    $tgl_awal = $last_time;
                    $tgl_akhir = $current_time;
                }
            } else {
                $start_date = $req->tgl_awal_export;
                $end_date = $req->tgl_akhir_export;
                $start_date2 = $start_date[6] . $start_date[7] . $start_date[8] . $start_date[9] . '-' . $start_date[3] . $start_date[4] . '-' . $start_date[0] . $start_date[1] . ' 00:00:00';
                $end_date2 = $end_date[6] . $end_date[7] . $end_date[8] . $end_date[9] . '-' . $end_date[3] . $end_date[4] . '-' . $end_date[0] . $end_date[1] . ' 23:59:59';
                $transactions = Transaction::select('transactions.*')
                    ->whereBetween('created_at', array($start_date2, $end_date2))
                    ->get();
                $array = array();
                foreach ($transactions as $no => $transaction) {
                    array_push($array, $transactions[$no]->created_at->toDateString());
                }
                $dates = array_unique($array);
                rsort($dates);
                $tgl_awal = $start_date2;
                $tgl_akhir = $end_date2;
            }
            
            return $this->exportExcel($tgl_awal, $tgl_akhir);
           
        } else {
            return back();
        }
    }
    public function exportExcel($tgl_awal ,$tgl_akhir)
    {
        return Excel::download(new ReportExport($tgl_awal ,$tgl_akhir), 'report.xlsx');
    }
    
    public function reportexport()
    {
        return Excel::download(new ReportExport, 'report.xlsx');
    }
}
