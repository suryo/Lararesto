<?php

/**
 * author : Suryo Atmojo <suryoatm@gmail.com>
 * project : Supresso Laravel
 * Start-date : 19-09-2022
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product_sub_category_model extends Model
{
    use HasFactory;
    protected $table = 'pos_sub_category';
    protected $fillable = [
        'category_id',
        'name',
        'fileimages',

    ];
}
