<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class KeranjangResource extends JsonResource
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
            'order_code' => $this->order_code,
            'products_id' => $this->products_id,
            'products_name' => $this->products_name,
            'products_image' => $this->products_image,
            'products_image_url' =>  ($this->products_image == null ? asset('storage/img/default.png') : asset('storage/' . $this->products_image)),
            'qty' => $this->qty,
            'satuan' => $this->satuan,    
            'stok' => $this->stok,    
            'price' => $this->price,
            'price_total' => $this->price_total            
        ];
    }
}
