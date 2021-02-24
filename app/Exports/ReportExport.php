<?php

namespace App\Exports;

use App\Transaction;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ReportExport implements FromCollection, WithHeadings
{
    /**
     * @return \Illuminate\Support\Collection
     */

     
    public function __construct(string $tgl_awal, string $tgl_akhir)
    {
        $this->tgl_awal = $tgl_awal;
        $this->tgl_akhir = $tgl_akhir;
    }
    

    public function collection()
    {
        
        // return Transaction::all();
        $type = Transaction::distinct('created_at')->select('uuid', 'nama', 'nomor_hp', 'ekspedisi_kirim', 'alamat_kirim',
        'transaction_total', 'created_at')->whereBetween('created_at', array($this->tgl_awal, $this->tgl_akhir ))->get();
   
        return $type;
    }
    public function headings(): array
    {
        return [
            'uuid',
            'nama',
            'nomor_hp',
            'ekspedisi_kirim',
            'alamat_kirim',
            'transaction_total',
            'created_at'
        ];
    }
}