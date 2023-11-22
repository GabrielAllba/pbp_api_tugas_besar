<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pemesanan extends Model
{
    use HasFactory;

    public $timestamps = false;
    protected $table = 'pemesanan';
    protected $primaryKey = 'id';


    protected $fillable = [
        'id_user',
        'tipe_kamar',
        'harga_dasar',
        'harga',
        'tanggal_checkin',
        'tanggal_checkout',
        'qr_code',
    ];
}