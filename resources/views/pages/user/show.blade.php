@extends('layouts.default')

@section('content') <!--content diambil dari yield pada layouts.default-->


<div class="card col-md-8">
    <div class="card-header">
        <strong class="card-title mb-3">Profile User</strong>
    </div>
    <div class="card-body">
        <div class="form-group row">
            <label for="nama" class="col-md-3 col-form-label text-md-left">{{ __('Username ') }}</label>
            <label for="jenis_kelamin" class="col-md-1 col-form-label text-md-left">{{ __(':') }}</label>

            <div class="col-md-6 mt-2">
                <b>{{ $user->username}}</b>
            </div>
        </div>
        <hr>
        <div class="form-group row">
            <label for="nama" class="col-md-3 col-form-label text-md-left">{{ __('Nama ') }}</label>
            <label for="jenis_kelamin" class="col-md-1 col-form-label text-md-left">{{ __(':') }}</label>

            <div class="col-md-6 mt-2">
                <b>{{ $user->nama}}</b>
            </div>
        </div>
        <hr>
        <div class="form-group row">
            <label for="jenis_kelamin" class="col-md-3 col-form-label text-md-left">{{ __('Jenis Kelamin') }}</label>
            <label for="jenis_kelamin" class="col-md-1 col-form-label text-md-left">{{ __(':') }}</label>

            <div class="col-md-6 mt-2">
                <b>{{ $user->jenis_kelamin}}</b>
            </div>
        </div>
        <hr>
        <div class="form-group row">
            <label for="nomor_hp" class="col-md-3 col-form-label text-md-left">{{ __('Nomor HP') }}</label>
            <label for="jenis_kelamin" class="col-md-1 col-form-label text-md-left">{{ __(':') }}</label>

            <div class="col-md-6 mt-2">
                <b>{{ $user->nomor_hp}}</b>
            </div>
        </div>
        <hr>
        <div class="form-group row">
            <label for="alamat" class="col-md-3 col-form-label text-md-left">{{ __('Alamat') }}</label>
            <label for="jenis_kelamin" class="col-md-1 col-form-label text-md-left">{{ __(':') }}</label>

            <div class="col-md-6 mt-2">
                <b>{{ $user->alamat}}</b>
            </div>
        </div>
        
    </div>
</div>



@endsection