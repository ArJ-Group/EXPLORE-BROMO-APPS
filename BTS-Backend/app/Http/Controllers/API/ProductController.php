<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    // TODO: semua request
    public function all(Request $request) {
        $id = $request->input("id");
        $name = $request->input("name");
        $description = $request->input("description");
        $tags = $request->input("tags");
        $categories = $request->input("categories");

        $price_from = $request->input("price_from");
        $price_to = $request->input("price_to");

        $limit = $request->input("limit", 6);

        if ($id) {
            $product = Product::with(["category", "galleries"])->find($id);

            if ($product) {
                return ResponseFormatter::success(
                    $product,
                    "Data produk berhasil ditambahkan"
                );
            } else {
                return ResponseFormatter::error(
                    null,
                    "Data produk tidak ditemukan",
                    404
                );
            }
        }

        $product = Product::with(["category", "galleries"]);
        
        //* filtering conditional name
        if ($name) {
            $product->where("name", "like", "%" . $name . "%");
        }

         //* filtering conditional description
        if ($description) {
            $product->where("description", "like", "%" . $description . "%");
        }

        //* filtering conditional tags
        if ($tags) {
            $product->where("tags", "like", "%" . $tags . "%");
        }

        //* filtering conditional price
        if ($price_from) {
            $product->where("price", ">=", $price_from);
        }

        if ($price_to) {
            $product->where("price", "<=", $price_to);
        }

        //* filtering conditional categories
        if ($categories) {
            $product->where("categories", $categories);
        }

        return ResponseFormatter::success(
            $product->paginate($limit),
            "Data produk berhasil diambil"
        );
    }
}
