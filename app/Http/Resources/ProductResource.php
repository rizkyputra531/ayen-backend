<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'nama' => $this->nama,
            'kategori' => $this->kategori,
            'foto' => $this->foto,
            'stok' => $this->stok,
            'harga' => $this->harga,
            'satuan' => $this->satuan,
            'diskon' => $this->diskon,
            'foto_url' =>  ($this->foto == null ? asset('storage/img/default.png') : asset('storage/' . $this->foto)),
            'deskripsi' => $this->deskripsi
        ];
    }
}
