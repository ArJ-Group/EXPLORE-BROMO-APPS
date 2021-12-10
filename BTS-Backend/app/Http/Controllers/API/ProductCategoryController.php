<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\ProductCategory;

use Illuminate\Http\Request;

class ProductCategoryController extends Controller
{
    // TODO: Semua request
    public function all(Request $request) {
        $id = $request->input("id");
        $name = $request->input("name");
        $limit = $request->input("limit");
        $show_product = $request->input("show_product");

        // TODO: mencari category name dengan relasinya product
        if ($id) {
            $category = ProductCategory::with(["products"])->find($id);

            if ($category) {
                return ResponseFormatter::success(
                    $category,
                    "Data kategori berhasil diambil"
                );
            } else {
                return ResponseFormatter::error(
                    null,
                    "Data kategori tidak ada",
                    404
                );
            }
        }

        // TODO: query kosong
        $category = ProductCategory::query();

        // TODO: filtering name
        if ($name) {
            $category->where("name", "like", "%" . $name . "%");
        }

        if ($show_product) {
            $category->with("products");
        }

        return ResponseFormatter::success(
            $category->paginate($limit),
            "Data kategori berhasil diambil"
        );
    }
}
