<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        "name",
        "price",
        "description",
        "categories_id",
        "tags",
    ];

    // TODO: relasi ke table galleries
    public function galleries() {
        return $this->hasMany(ProductGallery::class, "products_id", "id");
    }

    // TODO: relasi ke table kategories
    public function category() {
        return $this->belongsTo(ProductCategory::class, "categories_id", "id");
    }

    // TODO: relasi ke table transactionItem (belum dipake)
    public function items() {
        return $this->hasMany(TransactionItem::class, "products_id", "id");
    }
}
