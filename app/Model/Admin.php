<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
// use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Hash;


class Admin extends Authenticatable
{
    //
    protected $table = "admin"; //table admin

    protected $fillable = [
        'nama', 'jenis_kelamin', 'nomor_hp', 'alamat', 'username',
    ];

    protected $hidden = [
        'password',
    ];

    public $timestamps = false;
    protected $primarykey = 'id';

    public static function createByRequest($request)
    {
        $data = new self;
        $data->fill($request->all());
        $data->password = Hash::make($request->password);

        // if ($request->foto) {
        //     $data->foto = $data->uploadImage($request);
        // }

        // $data->syncRoles($request->level);

        return $data->save();
    }

    public function updateByRequest($request)
    {
        $data = $this;
        $data->fill($request->all());

        if ($request->password) {
            $data->password = Hash::make($request->password);
        }

        return $data->save();
    }
}
