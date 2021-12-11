<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TransactionItem extends Model
{
    use HasFactory;

    protected $fillable = [
        "users_id",
        "products_id",
        "transactions_id",
        "quantity",
    ];

    // TODO: relasi ke table user
    public function user() {
        return $this->belongsTo(User::class, "users_id", "id");
    }

    // TODO: relasi ke product
    public function product() {
        return $this->belongsTo(Product::class, "products_id", "id");
    }

    // TODO: relasi ke transaction
    public function transaction() {
        return $this->BelongsTo(Transaction::class, "transactions_id", "id");
    }
}
