@extends('layouts.default')

@section('content') <!--content diambil dari yield pada layouts.default-->

<div class="container mt-2">
    <form action="{{route('products.update', $item->id)}}" method="POST" enctype="multipart/form-data">         
    @csrf
    @method('PUT')
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <strong>Edit Produk</strong>
                        <small> - {{$item->nama}}</small>

                    </div>
                    <div class="card-body card-block">
                        <div class="form-group">
                            <label for="nama" class="form-control-label">Nama </label>
                            <input type="text" 
                            name="nama" 
                            value="{{ old('nama') ? old('nama') : $item->nama}}"
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
                            value="{{ old('merk') ? old('merk') : $item->merk}}"
                            class="form-control @error('merk') is-invalid @enderror">
                        @error('merk')
                        <div class="text-muted">
                            {{$message}}
                        </div>
                        @enderror
                        </div>

                        <div class="form-group">
                            <label for="kategori" class=" form-control-label">Kategori</label>
                            <select name="kategori" id="kategori" class="form-control" value="{{old('kategori') ? old('kategori') : $item ?? ''->kategori}}}}" required>
                                    <option value="{{$item->kategori}}">{{$item->kategori}}</option>
                                @foreach ($products as $product)
                                    <option value="{{$product->nama}}">{{$product->nama}}</option>
                                @endforeach

                                
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="deskripsi" class="form-control-label">Deskripsi </label>
                            <textarea name="deskripsi"
                            class="ckeditor form-control @error('deskripsi') is-invalid @enderror">{{old('deskripsi') ? old('deskripsi') : $item->deskripsi}}</textarea>
                        @error('deskripsi')
                        
                        <div class="text-muted">
                            {{$message}}
                        </div>
                        @enderror
                        </div>

                        <div class="form-group">
                            <label for="stok" class="form-control-label">Stok </label>
                            <input type="text" 
                            name="stok" 
                            value="{{ old('stok') ? old('stok') : $item->stok }}"
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
                            value="{{ old('harga') ? old('harga') : $item->harga}}"
                            class="form-control @error('harga') is-invalid @enderror">
                        @error('harga')
                        <div class="text-muted">
                            {{$message}}
                        </div>
                        @enderror
                        </div>

                        <div class="form-group">
                            <label for="satuan" class="form-control-label">Satuan </label>
                            <input type="text" 
                            name="satuan" 
                            value="{{ old('satuan') ? old('satuan') : $item->satuan}}"
                            class="form-control @error('satuan') is-invalid @enderror">
                        @error('satuan')
                        <div class="text-muted">
                            {{$message}}
                        </div>
                        @enderror
                        </div>

                        <div class="form-group">
                            <label for="diskon" class="form-control-label">Diskon </label>
                            <input type="text" 
                            name="diskon" 
                            value="{{ old('diskon') ? old('diskon') : $item->diskon}}"
                            class="form-control @error('diskon') is-invalid @enderror">
                        @error('diskon')
                        <div class="text-muted">
                            {{$message}}
                        </div>
                        @enderror
                        </div>

                        <div class="form-group">
                            <button class="btn btn-primary btn-block" type="submit">
                                Selesai Edit
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <strong>Ganti Foto</strong>

                    </div>
                    <div class="card-body card-block">
                         
                        <script>
                            function readURL(input) {
                                if (input.files && input.files[0]) {
                                    var reader = new FileReader();

                                    reader.onload = function (e) {
                                        $('#images')
                                            .attr('src', e.target.result);
                                    };
                                                        reader.readAsDataURL(input.files[0]);
                                }
                            }
                        </script>
                        <div class="card">
                            <img id="images" src="{{url($item->foto)}}">
                        </div>

                        <div class="form-group text-center">
                            <label class="btn btn-primary" for="my-file-selector">
                            <input id="my-file-selector" @error('foto') is-invalid @enderror" name="foto" type="file"
                                style="display:none" onchange="readURL(this);">
                            Upload New Image
                        </label>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>
</div>

    

@endsection