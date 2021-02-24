<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'nama' => 'required|min:3',
            'jenis_kelamin' => 'required:in:Pria,Wanita',
            'nomor_hp' => 'required',
            'alamat' => 'required',
            'username' => 'required|min:4|unique:admin',
            'password' => 'required|min:4|confirmed'
        ];
    }
}
