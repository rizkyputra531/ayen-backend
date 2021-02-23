<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\ApiController;

use App\Http\Repositories\KeranjangRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class KeranjangController extends ApiController
{
    protected $keranjangRepository;
    public function __construct(
        KeranjangRepository $keranjangRepository
    ) {
        $this->keranjangRepository = $keranjangRepository;
    }
    
    public function addKeranjang(Request $request)
    {
        $user = Auth::guard()->user();
        $users_id  = $user->id;
        $users_nama  = $user->nama;

        $insert = $this->keranjangRepository->tambahKeranjang($request, $users_id, $users_nama);
        if ($insert) {
            return $this->sendResponse(0, 'Berhasil', $insert);
        } else {
            return $this->sendError(2, 'Error');
        }

        
    }
    public function increamentKeranjang(Request $request)
    {
        $user = Auth::guard()->user();
        $users_id  = $user->id;
        $users_nama  = $user->nama;

        $insert = $this->keranjangRepository->increamentKeranjang($request, $users_id);
        if ($insert) {
            return $this->sendResponse(0, 'Berhasil', $insert);
        } else {
            return $this->sendError(2, 'Error');
        }

        
    }
    public function decreamentKeranjang(Request $request)
    {
        $user = Auth::guard()->user();
        $users_id  = $user->id;
        $users_nama  = $user->nama;

        $insert = $this->keranjangRepository->decreamentKeranjang($request, $users_id);
        if ($insert) {
            return $this->sendResponse(0, 'Berhasil', $insert);
        } else {
            return $this->sendError(2, 'Error');
        }

        
    }
    public function removeKeranjang(Request $request)
    {
        $user = Auth::guard()->user();
        $users_id  = $user->id;
        $users_nama  = $user->nama;

        $insert = $this->keranjangRepository->removeKeranjang($request, $users_id);
        if ($insert) {
            return $this->sendResponse(0, 'Berhasil', $insert);
        } else {
            return $this->sendError(2, 'Error');
        }

        
    }
    public function KeranjangUser(Request $request)
    {
        $user = Auth::guard()->user();
        $users_id  = $user->id;

        $insert = $this->keranjangRepository->KeranjangUser($request, $users_id);
        if ($insert) {
            return $this->sendResponse(0, 'Berhasil', $insert);
        } else {
            return $this->sendError(2, 'Error');
        }

        
    }
    
}
