<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Storage;

class ProductGallery extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        "products_id",
        "url",
    ];

    // TODO: relasi ke product
    public function gallery() {
        return $this->belongsTo(Product::class, "products_id", "id");
    }

    // TODO: convert ke full url
    public function getUrlAttributes($url) {
        return config("app.url") . Storage::url($url);
    }
}
