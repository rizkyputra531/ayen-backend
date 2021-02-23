@extends('layouts.default')

@section('content') <!--content diambil dari yield pada layouts.default-->


<div class="card col-md-8">
    <div class="card-header">
        <strong class="card-title mb-3">Keterangan Pembelian - </strong><small>{{$item->uuid}}</small>
    </div>
    <div class="card-body">
        <table class="table table-bordered">
            <tr>
                <th width="200px">Nama</th>
                <td>{{$item->nama}}</td>
            </tr>
            <tr>
                <th>Email</th>
                <td>{{$item->email}}</td>
            </tr>
            <tr>
                <th>Nomor</th>
                <td>{{$item->nomor_hp}}</td>
            </tr>
            <tr>
                <th>Ekspedisi Kirim</th>
                <td>{{$item->ekspedisi_kirim}}</td>
            </tr>
            <tr>
                <th>Alamat Kirim</th>
                <td>{{$item->alamat_kirim}}</td>
            </tr>
            <tr>
                <th>Status</th>
                <td>{{$item->transaction_status}}</td>
            </tr>
            <tr>
                <th>Pembelian Produk</th>
                <td>
                    <table class="table table-bordered w-100">
                        <tr>
                            <th>Nama</th>
                            <th>Tipe</th>
                            <th>Harga</th>
                        </tr>
                        @foreach ($item->details as $detail)
                        <tr>
                            <td>{{$detail->product->nama}}</td>
                            <td>{{$detail->product->merk}}</td>
                            <td>Rp. {{$detail->product->harga}}</td>
                        </tr>
                        @endforeach
                    </table>
                </td> 
            </tr>

            <tr>
                <th>Total Transaksi</th>
                <td>Rp. {{$item->transaction_total}}</td>
            </tr>
        </table>

        <div class="row">
            <div class="col-4">
                <a href="{{route('transaction.status', $item->id)}}?status=SUKSES" class="btn btn-success btn-block">
                <i class="fa fa-check"></i> Set Sukses
                </a>
            </div>
            <div class="col-4">
                <a href="{{route('transaction.status', $item->id)}}?status=GAGAL" class="btn btn-warning btn-block">
                <i class="fa fa-times"></i> Set Gagal
                </a>
            </div>
            <div class="col-4">
                <a href="{{route('transaction.status', $item->id)}}?status=PENDING" class="btn btn-info btn-block">
                <i class="fa fa-spinner"></i> Set Pending
                </a>
            </div>
        </div>
        
    </div>
</div>



@endsection