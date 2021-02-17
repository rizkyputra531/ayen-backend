<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductUpdateRequest extends FormRequest
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
            'nama' => 'max:255',
            //'slug' => 'required|max:255',
            'merk' => 'max:255',
            'kategori' => 'max:255',
            // 'foto' => 'image',
            'stok' => 'integer',
            'harga' => 'integer',
            'diskon' => 'integer',
            'deskripsi' => 'max:255'
        ];
    }
    
}
