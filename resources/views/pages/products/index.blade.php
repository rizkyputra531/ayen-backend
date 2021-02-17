@extends('layouts.default')

@section('content') <!--content diambil dari yield pada layouts.default-->


<div class="content">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-lg-12">
                <div class="card" style="width: 110rem;">
                    <div class="card-header">
                        <strong class="card-title">Data Produk</strong>
                    </div>
                    
                    <div class="card-body">
                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
                            <thead width="600px" class="text-center">
                                <tr>
                                    <th>No</th>
                                    <th width="100px">Foto</th>
                                    <th width="200px">Nama</th>
                                    <th width="100px">Merk</th>
                                    <th width="100px">Kategori</th>
                                    <th width="300px">Deskripsi</th>
                                    <th>Stok</th>
                                    <th width="150px">Harga</th>
                                    <th width="100px">Diskon</th>
                                    <th width="100px" class="text-right">Aksi</th>
                                </tr>
                            </thead>
                            @php
                            $no=1;
                            @endphp
                            <tbody>
                                @forelse ($items as $item)
                                <tr>
                                    
                                    <td>{{$no++}}</td>
                                    <td><img src="{{url($item->foto)}}" alt=""/></td>
                                    <td>{{$item->nama}}</td>
                                    <td>{{$item->merk}}</td>
                                    <td>{{$item->kategori}}</td>
                                    <td>{!!$item->deskripsi!!}</td>
                                    <td>{{$item->stok}}</td>
                                    <td>Rp. {{$item->harga}} /{{$item->satuan}}</td>
                                    <td>{{$item->diskon}} %</td>
                                    <td align="right">
                                        
                                        <a href="{{route('products.show', $item->id)}}" class="btn btn-warning btn-sm">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                        <a href="{{route('products.edit', $item->id)}}" class="btn btn-primary btn-sm">
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