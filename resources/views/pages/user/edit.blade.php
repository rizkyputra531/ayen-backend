@extends('layouts.default')

@section('content') <!--content diambil dari yield pada layouts.default-->
<div class="card">
    <div class="card-header">
        <strong>Edit User</strong>

    </div>
    <div class="card-body card-block">
        <form action="{{route('user.update', $user->id)}}" method="POST" enctype="multipart/form-data">
        @method('PUT')
        @csrf

            <div class="form-group">
                <label for="nama" class="form-control-label">Nama </label>
                <input type="text" 
                name="nama" 
                value="{{ old('nama') ? old('nama') : $user->nama}}"
                class="form-control @error('nama') is-invalid @enderror">
            @error('nama')
            <div class="text-muted">
                {{$message}}
            </div>
            @enderror
            </div>

            <div class="form-group">
                <label for="jenis_kelamin" class=" form-control-label">Jenis Kelamin</label>
                <select name="jenis_kelamin" id="jenis_kelamin" class="form-control" value="{{ old('jenis_kelamin') ? old('jenis_kelamin') : $user->jenis_kelamin}}" required>
                         <option value="{{ old('jenis_kelamin') ? old('jenis_kelamin') : $user->jenis_kelamin}}">{{$user->jenis_kelamin}}</option>
                         <option value="Pria">Pria</option>
                         <option value="Wanita">Wanita</option>
                
                    
                </select>
            </div>

            <div class="form-group">
                <label for="nomor_hp" class="form-control-label">Nomor HP </label>
                <input type="text" 
                name="nomor_hp" 
                value="{{ old('nomor_hp') ? old('nomor_hp') : $user->nomor_hp}}"
                class="form-control @error('nomor_hp') is-invalid @enderror">
            @error('nomor_hp')
            <div class="text-muted">
                {{$message}}
            </div>
            @enderror
            </div>


            <div class="form-group">
                <label for="alamat" class="form-control-label">Alamat </label>
                <textarea rows="4" name="alamat"
                class="form-control @error('alamat') is-invalid @enderror">{{ old('alamat') ? old('alamat') : $user->alamat}}</textarea>
            @error('alamat')
            
            <div class="text-muted">
                {{$message}}
            </div>
            @enderror
            </div>


            <div class="form-group">
                <label for="email" class="form-control-label">Email </label>
                <input type="text" 
                name="email" 
                value="{{ old('email') ? old('email') : $user->email}}"
                class="form-control @error('email') is-invalid @enderror">
            @error('email')
            <div class="text-muted">
                {{$message}}
            </div>
            @enderror
            </div>

            <div class="form-group">
                <label for="password" class="form-control-label">Password </label>
                <input type="password" 
                name="password" 
                value="{{ old('password') }}"
                placeholder="*Silahkan Isi Apa Bila Ingin Mengganti Password"
                class="form-control @error('password') is-invalid @enderror">
            @error('password')
            <div class="text-muted">
                {{$message}}
            </div>
            @enderror
            </div>

            <div class="form-group">
                <label for="password" class="form-control-label">Ulangi Password </label>
                <input type="password" 
                name="password_confirmation" 
                autocomplete="new-password"
                value="{{ old('password_confirmation') }}"
                class="form-control @error('password_confirmation') is-invalid @enderror">
            @error('password_confirmation')
            <div class="text-muted">
                {{$message}}
            </div>
            @enderror
            </div>

            

            <div class="form-group">
                <button class="btn btn-primary btn-block" type="submit">
                    {{ __('Update') }}
                </button>
            </div>


        </form>

    </div>
</div>
@endsection