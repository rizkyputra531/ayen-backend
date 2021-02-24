<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    // Initialize
    protected $fillable = [
        'uuid', 'nama', 'email', 'nomor_hp', 'ekspedisi_kirim','alamat_kirim', 'transaction_total', 'transaction_status', 'created_at', 'order_status'
    ];
}