<?php

namespace App\Http\Requests;


use App\Http\Requests\ProductRequest;
use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
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
            'nama' => 'required|max:255',
            //'slug' => 'required|max:255',
            'merk' => 'required|max:255',
            'kategori' => 'required|max:255',
            'foto' => 'required|image|mimes:jpeg,png,jpg',
            'stok' => 'required|integer',
            'harga' => 'required|integer',
            'satuan' => 'required',
            'diskon' => 'required|integer',
            'deskripsi' => 'required|max:255'
        ];
    }
}
