@extends('layouts.default')

@section('content') <!--content diambil dari yield pada layouts.default-->
<div class="card">
    <div class="card-header">
        <strong>Tambah Produk</strong>

    </div>
    <div class="card-body card-block">
        <form action="{{route('products.store')}}" method="POST" enctype="multipart/form-data">
        @csrf

            <div class="form-group">
                <label for="nama" class="form-control-label">Nama </label>
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
                <label for="merk" class="form-control-label">Merk </label>
                <input type="text" 
                name="merk" 
                value="{{ old('merk') }}"
                class="form-control @error('merk') is-invalid @enderror">
            @error('merk')
            <div class="text-muted">
                {{$message}}
            </div>
            @enderror
            </div>

            

            <div class="form-group">
                <label for="kategori" class=" form-control-label">Kategori</label>
                <select name="kategori" id="kategori" class="form-control" value="{{old('kategori')}}" required>
                    @foreach ($products as $product)
                         <option value="{{$product->nama}}">{{$product->nama}}</option>
                    @endforeach

                    
                </select>
            </div>

            <div class="form-group">
                <label for="deskripsi" class="form-control-label">Deskripsi </label>
                <textarea name="deskripsi"
                class="ckeditor form-control @error('deskripsi') is-invalid @enderror">{{old('deskripsi')}}</textarea>
            @error('deskripsi')
            
            <div class="text-muted">
                {{$message}}
            </div>
            @enderror
            </div>

            <div class="form-group">
                <label for="foto" class="form-control-label">Foto </label>
                <input type="file" 
                name="foto" 
                value="{{ old('foto') }}"
                accept="image/*"
                class="form-control @error('foto') is-invalid @enderror">
            @error('foto')
            <div class="text-muted">
                {{$message}}
            </div>
            @enderror
            </div>

            <div class="form-group">
                <label for="stok" class="form-control-label">Stok </label>
                <input type="text" 
                name="stok" 
                value="{{ old('stok') }}"
                class="form-control @error('stok') is-invalid @enderror">
            @error('stok')
            <div class="text-muted">
                {{$message}}
            </div>
            @enderror
            </div>

            <div class="form-group">
                <label for="harga" class="form-control-label">Harga </label>
                <input type="number" 
                name="harga" 
                value="{{ old('harga') }}"
                class="form-control @error('harga') is-invalid @enderror">
            @error('harga')
            <div class="text-muted">
                {{$message}}
            </div>
            @enderror
            </div>

            <div class="form-group">
                <label for="diskon" class="form-control-label">Diskon </label>
                <input type="text" 
                name="diskon" 
                value="{{ old('diskon') }}"
                class="form-control @error('diskon') is-invalid @enderror">
            @error('diskon')
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
@endsection