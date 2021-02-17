@extends('layouts.default')

@section('content') <!--content diambil dari yield pada layouts.default-->

<div class="container mt-2">
    <form action="{{route('transaction.update', $item->id)}}" method="POST" enctype="multipart/form-data">         
    @csrf
    @method('PUT')
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <strong>Ubah Transaksi</strong>
                        <small> - {{$item->uuid}}</small>

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
                            <label for="email" class="form-control-label">Email </label>
                            <input type="text" 
                            name="email" 
                            value="{{ old('email') ? old('email') : $item->email}}"
                            class="form-control @error('merk') is-invalid @enderror">
                        @error('email')
                        <div class="text-muted">
                            {{$message}}
                        </div>
                        @enderror
                        </div>

                        <div class="form-group">
                            <label for="nomor_hp" class="form-control-label">Nomor HP </label>
                            <input type="text" 
                            name="nomor_hp" 
                            value="{{ old('nomor_hp') ? old('nomor_hp') : $item->nomor_hp }}"
                            class="form-control @error('nomor_hp') is-invalid @enderror">
                        @error('nomor_hp')
                        <div class="text-muted">
                            {{$message}}
                        </div>
                        @enderror
                        </div>

                        <div class="form-group">
                            <label for="alamat_kirim" class="form-control-label">Alamat Kirim </label>
                            <textarea rows="4" name="alamat_kirim"
                            class="form-control @error('alamat_kirim') is-invalid @enderror">{{ old('alamat_kirim') ? old('alamat_kirim') : $item->alamat_kirim}}</textarea>
                        @error('alamat_kirim')
                        
                        <div class="text-muted">
                            {{$message}}
                        </div>
                        @enderror
                        </div>

                        <div class="form-group">
                            <label for="transaction_total" class="form-control-label">Total Transaksi </label>
                            <input type="text" 
                            name="transaction_total" 
                            value="{{ old('transaction_total') ? old('transaction_total') : $item->transaction_total}}"
                            class="form-control @error('transaction_total') is-invalid @enderror">
                        @error('transaction_total')
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

            

        </div>
    </form>
</div>

    

@endsection