<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProductCategory extends Model
{
    // use SoftDeletes;

    protected $table = "productcategory"; //table admin

    protected $fillable = [
        'nama'
    ];

    protected $hidden = [

    ];

    public function product()
    {
        return $this->hasMany(Product::class,'kategori');
    }

     
}
