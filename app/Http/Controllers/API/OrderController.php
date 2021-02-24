<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\ApiController;

use App\Http\Repositories\OrderRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrderController extends ApiController
{
    protected $orderRepository;
    public function __construct(
        OrderRepository $orderRepository
    ) {
        $this->orderRepository = $orderRepository;
    }
    
    public function addOrder(Request $request)
    {
        $user = Auth::guard()->user();
        $users_id  = $user->id;
        $users_nama  = $user->nama;
        $users_email  = $user->email;

        $insert = $this->orderRepository->addOrder($request, $users_id, $users_nama, $users_email);
        if ($insert) {
            return $this->sendResponse(0, 'Berhasil');
        } else {
            return $this->sendError(2, 'Error');
        }

        
    }

    public function getOrder(Request $request)
    {
        $user = Auth::guard()->user();
        $users_id  = $user->id;

        $insert = $this->orderRepository->getOrder($users_id);
        if ($insert) {
            return $this->sendResponse(0, 'Berhasil', $insert);
        } else {
            return $this->sendError(2, 'Error');
        }

        
    }
    
}
