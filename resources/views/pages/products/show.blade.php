@extends('layouts.default')

@section('content') <!--content diambil dari yield pada layouts.default-->
<div class="row">
    <div class="col-md-8">
        <div class="card">
            <div class="card-header">
                <strong>Edit Produk</strong>
                <small> - {{$item->nama}}</small>

            </div>
            <div class="card-body card-block">
                <div class="form-group row">
                    <label for="id" class="col-md-3 col-form-label text-md-left">{{ __('ID Produk') }}</label>
                    <label for="#" class="col-md-1 col-form-label text-md-left">{{ __(':') }}</label>

                    <div class="col-md-6 mt-2">
                        <b>{{ $item->id}}</b>
                    </div>
                </div>
                <hr>
                <div class="form-group row">
                    <label for="nama" class="col-md-3 col-form-label text-md-left">{{ __('Nama') }}</label>
                    <label for="#" class="col-md-1 col-form-label text-md-left">{{ __(':') }}</label>

                    <div class="col-md-6 mt-2">
                        <b>{{ $item->nama}}</b>
                    </div>
                </div>
                <hr>
                <div class="form-group row">
                    <label for="merk" class="col-md-3 col-form-label text-md-left">{{ __('Merk') }}</label>
                    <label for="#" class="col-md-1 col-form-label text-md-left">{{ __(':') }}</label>

                    <div class="col-md-6 mt-2">
                        <b>{{ $item->merk}}</b>
                    </div>
                </div>
                <hr>
                <div class="form-group row">
                    <label for="kategori" class="col-md-3 col-form-label text-md-left">{{ __('Kategori') }}</label>
                    <label for="#" class="col-md-1 col-form-label text-md-left">{{ __(':') }}</label>

                    <div class="col-md-6 mt-2">
                        <b>{{ $item->kategori}}</b>
                    </div>
                </div>
                <hr>
                <div class="form-group row">
                    <label for="deskripsi" class="col-md-3 col-form-label text-md-left">{{ __('Deskripsi') }}</label>
                    <label for="#" class="col-md-1 col-form-label text-md-left">{{ __(':') }}</label>

                    <div class="col-md-6 mt-2">
                        <b>{!!$item->deskripsi!!}</b>
                    </div>
                </div>
                <hr>
                <div class="form-group row">
                    <label for="stok" class="col-md-3 col-form-label text-md-left">{{ __('Stok') }}</label>
                    <label for="#" class="col-md-1 col-form-label text-md-left">{{ __(':') }}</label>

                    <div class="col-md-6 mt-2">
                        <b>{{ $item->stok}}</b>
                    </div>
                </div>
                <hr>
                <div class="form-group row">
                    <label for="harga" class="col-md-3 col-form-label text-md-left">{{ __('Harga') }}</label>
                    <label for="#" class="col-md-1 col-form-label text-md-left">{{ __(':') }}</label>

                    <div class="col-md-6 mt-2">
                        <b>Rp. {{ $item->harga}} /{{ $item->satuan}}</b>
                    </div>
                </div>
                
                <div class="form-group row">
                    <label for="diskon" class="col-md-3 col-form-label text-md-left">{{ __('Diskon') }}</label>
                    <label for="#" class="col-md-1 col-form-label text-md-left">{{ __(':') }}</label>

                    <div class="col-md-6 mt-2">
                        <b>{{ $item->diskon}}</b>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="col-md-4">
        <div class="card">
            <div class="card-header">
                <strong>Foto Produk</strong>

            </div>
            <div class="card-body card-block">
                <div class="card">
                    <img src="{{url($item->foto)}}">
                </div>
            </div>
        </div>
    </div>
</div>
@endsection