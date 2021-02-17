<?php

namespace App\Model;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Transaction extends Model
{
    use SoftDeletes;
    
    protected $table = "transactions"; //table admin

    protected $fillable = [
        'uuid', 'nama', 'email', 'nomor_hp', 'ekspedisi_kirim','alamat_kirim', 'transaction_total', 'transaction_status'
    ];

    protected $hidden = [
        
    ];

    public function details()
    {
        return $this->hasMany(TransactionDetail::class,'transactions_id');
    }

    // public function user()
    // {
    //     return $this->hasMany(User::class,'id');
    // }
}
