@extends('layouts.default')

@section('content') <!--content diambil dari yield pada layouts.default-->


<div class="content">
    <div class="animated fadeIn">
        <div class="row">

            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        
                        <strong class="card-title">Data Kategori</strong>
                        
                    </div>
                    
                    <div class="card-body">
                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
                            <thead>
                                <tr class="text-center">
                                    <th>No</th>
                                    <th>Kategori</th>
                                    <th class="">Aksi</th>
                                </tr>
                            </thead>
                            @php
                            $no=1;
                            @endphp
                            <tbody>
                                @forelse ($items as $item)
                                <tr>
                                    
                                    <td class="text-center">{{$no++}}.</td>
                                    <td>{{$item->nama}}</td>
                                    <td class="text-center">
                                        
                                        <form action="{{route('productcategory.destroy', $item->id )}}" method="post" class="d-inline">
                                            @csrf
                                            @method('delete')
                                            <button class="btn btn-danger btn-sm">
                                                <i class="fa fa-trash"></i>
                                            </button>
                                        </form>
                                    </td>
                                    
                                    
                                    
                                </tr>
                                @empty
                                    <tr>
                                        <td class="text-center p-5" colspan="6">
                                            
                                        </td>
                                    </tr>
                                @endforelse
                                
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <strong>Tambah Kategori Produk</strong>

                    </div>
                    <div class="card-body card-block">
                        <form action="{{route('productcategory.store')}}" method="POST">
                        @csrf

                            <div class="form-group">
                                <label for="nama" class="form-control-label">Nama Kategori</label>
                                <input type="text" 
                                name="nama" 
                                value="{{ old('nama') }}"
                                class="form-control @error('nama') is-invalid @enderror">
                            @error('nama')
                            <div class="text-muted">
                                {{$message}}
                            </div>
                            @enderror
                            </div>
                            <div class="form-group">
                                <button class="btn btn-primary btn-block" type="submit">
                                    Tambah Barang
                                </button>
                            </div>


                        </form>

                    </div>
                </div>
            </div>


        </div>
    </div><!-- .animated -->
</div><!-- .content -->
@endsection