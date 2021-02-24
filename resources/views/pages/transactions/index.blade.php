@extends('layouts.default')

@section('content') <!--content diambil dari yield pada layouts.default-->


<div class="content">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-lg-12">
                <div class="card" style="width: 115rem;">
                    <div class="card-header">
                        <strong class="card-title">Data Transaksi</strong>
                    </div>
                    
                    <div class="card-body">
                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
                            <thead width="600px" class="text-center">
                                <tr>
                                    

                                    <th>No</th>
                                    <th>Tanggal</th>
                                    <th width="200px">Nama</th>
                                    <th width="200px">Email</th>
                                    <th width="100px">Nomor HP</th>
                                    <th width="200px">Ekspedisi Kirim</th>
                                    <th width="300px">Alamat Kirim</th>
                                    <th width="200px">Transaksi Total</th>
                                    <th>Status</th>
                                    <th width="200px" class="text-right">Aksi</th>
                                </tr>
                            </thead>
                            @php
                            $no=1;
                            @endphp
                            <tbody>
                                @forelse ($items as $item)
                                <tr>
                                    <td class="text-center">{{$no++}}</td>
                                    <td>{{$item->created_at->format('d/M/Y')}}</td>
                                    <td>{{$item->nama}}</td>
                                    <td>{{$item->email}}</td>
                                    <td>{{$item->nomor_hp}}</td>
                                    <td class="text-center">{{$item->ekspedisi_kirim}}</td>
                                    <td>{{$item->alamat_kirim}}</td>
                                    <td>Rp. {{$item->transaction_total}}</td>
                                    <td class="text-center"> 
                                        @if($item->transaction_status == 'PENDING')
                                            <span class="badge badge-info">
                                        @elseif($item->transaction_status == 'SUKSES')
                                            <span class="badge badge-success">
                                        @elseif($item->transaction_status == 'GAGAL')
                                            <span class="badge badge-danger">
                                        @else
                                            <span>
                                        @endif
                                            {{$item->transaction_status}}
                                            </span>
                                    </td>
                                    <td align="right">

                                        @if($item->transaction_status == 'PENDING')
                                            <a href="{{route('transaction.status', $item->id)}}?status=SUKSES"
                                                class="btn btn-success btn-sm">
                                                <i class="fa fa-check"></i>
                                            </a>
                                            <a href="{{route('transaction.status', $item->id)}}?status=GAGAL"
                                                class="btn btn-warning btn-sm">
                                                <i class="fa fa-times"></i>
                                            </a>
                                        @endif
                                        
                                        <a href="{{route('transaction.show', $item->id)}}" class="btn btn-info btn-sm">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                        <a href="{{route('transaction.edit', $item->id)}}" class="btn btn-primary btn-sm">
                                            <i class="fa fa-pencil"></i>
                                        </a>
                                        <form action="{{route('products.destroy', $item->id )}}" method="post" class="d-inline">
                                            @csrf
                                            @method('delete')
                                            <button class="btn btn-danger btn-sm">
                                                <i class="fa fa-trash"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                                @empty
                                    
                                @endforelse
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            


        </div>
    </div><!-- .animated -->
</div><!-- .content -->
@endsection