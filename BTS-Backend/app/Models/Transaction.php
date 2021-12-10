<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Transaction extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        "users_id",
        "address",
        "payment",
        "total_price",
        "shipping_price",
        "status"
    ];

    // TODO: relasi ke user
    public function user() {
        return $this->belongsTo(User::class, "users_id", "id");
    }

    // TODO: relasi ke table transactionItem
    public function items() {
        return $this->hasMany(TransactionItem::class, "transactions_id", "id");
    }
}
