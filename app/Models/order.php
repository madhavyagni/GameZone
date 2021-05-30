<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class order extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function user() {
        return $this->belongsTo(User::class);
    }

    public function product() {
        return $this->hasOne(product::class, 'id', 'product_id');
    }

    public function usr() {
        return $this->hasOne(User::class, 'id', 'user_id');
    }
}
