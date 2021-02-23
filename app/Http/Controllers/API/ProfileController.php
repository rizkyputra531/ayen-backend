<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\ApiController;
use App\Http\Repositories\ProfileRepository;
use App\Http\Controllers\Controller;
use App\Model\Product;
use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Auth;

class ProfileController extends ApiController
{
    public $profileRepo;
    public function __construct(ProfileRepository $profileRepo)
    {
        $this->profileRepo = $profileRepo;
    }

    public function getProfile(Request $request)
    {
        $user = Auth::guard()->user();
        $users_id  = $user->id;

        $result = $this->profileRepo->getDetailProfile($users_id);
        if ($result) {
            return $this->sendResponse(0, 'Berhasil' , $result);
        } else {
            return $this->sendError(2, 'Error');
        }
    }

    public function editProfile(Request $request)
    {
        $user = Auth::guard()->user();
        $users_id  = $user->id;

        $result = $this->profileRepo->updateProfileUser($request, $users_id);
        if ($result) {
            return $this->sendResponse(0, 'Berhasil' , $result);
        } else {
            return $this->sendError(2, 'Error');
        }
    }

    public function editEmail(Request $request)
    {
        $user = Auth::guard()->user();
        $users_id  = $user->id;

        $validator = Validator::make($request->all(), [
            'email' => 'required|unique:user,email,' . $users_id . ',id'
        ]);

        if ($validator->fails()) {
            return $this->sendError(1, 1, $validator->errors());
        }

        $upd = $this->profileRepo->updateEmailUser($request, $users_id);

        if ($upd) {
            return $this->sendResponse(0, "Berhasil", $upd);
        } else {
            return $this->sendError(2, 'Error');
        }
    }


    public function editPassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'password' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError(1, 1, $validator->errors());
        }

        $user = Auth::guard()->user();
        $users_id  = $user->id;

        $upd = $this->profileRepo->updatePasswordUser($request, $users_id);

        if ($upd) {
            return $this->sendResponse(0, "Berhasil", $upd);
        } else {
            return $this->sendError(2, 'Error');
        }
    }
}

