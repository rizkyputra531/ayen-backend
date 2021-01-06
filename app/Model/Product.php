<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use SoftDeletes;

    protected $table = "products"; //table admin

    protected $fillable = [
        'nama', 'slug', 'merk', 'kategori', 'foto', 'stok', 'harga', 'diskon', 'deskripsi'
    ];

    protected $hidden = [

    ];

    public function productcategory()
    {
        return $this->belongsTo(ProductCategory::class,'kategori','nama');
    }

    public function getFotoAttribute($value)
    {
        return url('storage/'. $value);
    }

     
}
