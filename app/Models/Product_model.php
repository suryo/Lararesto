<?php

/**
 * author : Suryo Atmojo <suryoatm@gmail.com>
 * project : Supresso Laravel
 * Start-date : 19-09-2022
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product_model extends Model
{
    use HasFactory;
    protected $fillable = [
        'id_brand',
        'id_category',
        'id_sub_category',
        'name',
        'description',
        'portion',
        'price',
        'stock',
        'units',

    ];
}
