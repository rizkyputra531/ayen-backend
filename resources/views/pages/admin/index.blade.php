@extends('layouts.default')

@section('content') <!--content diambil dari yield pada layouts.default-->


<div class="content">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-lg-12">
                <div class="card" style="width: 100rem;">
                    <div class="card-header">
                        <strong class="card-title">Data Admin</strong>
                        
                    </div>
                
                    <div class="card-body">
                           
                            <a href="{{route('admin.create')}}" class="btn btn-primary btn-sm">
                                <i class="fa fa-pencil"></i>
                                | Tambah Admin
                            </a>
                            <hr>
                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
                            
                            <thead width="500px">
                                <tr>
                                    <th>#</th>
                                    <th width="300px">Nama</th>
                                    <th>Jenis Kelamin</th>
                                    <th>Nomor HP</th>
                                    <th width="300px">Alamat</th>
                                    <th>Username</th>
                                    <th class="text-right">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($items as $item)
                                <tr>
                                    
                                    <td>{{$item->id}}</td>
                                    <td>{{$item->nama}}</td>
                                    <td>{{$item->jenis_kelamin}}</td>
                                    <td>{{$item->nomor_hp}}</td>
                                    <td>{{$item->alamat}}</td>
                                    <td>{{$item->username}}</td>
 
                                    <td align="right">
                                        
                                        <a href="{{route('admin.show', $item->id)}}" class="btn btn-warning btn-sm">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                        <a href="{{route('admin.edit', $item->id)}}" class="btn btn-primary btn-sm">
                                            <i class="fa fa-pencil"></i>
                                        </a>
                                        <form action="{{route('admin.destroy', $item->id )}}" method="post" class="d-inline">
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
                    </>
                </div>
            </div>
            


        </div>
    </div><!-- .animated -->
</div><!-- .content -->
@endsection