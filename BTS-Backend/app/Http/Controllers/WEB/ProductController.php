<?php

namespace App\Http\Controllers\WEB;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProductRequest;
use App\Models\Product;
use App\Models\ProductCategory;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class ProductController extends Controller
{
    public function index()
    {
        // TODO: the first page opening
        if (request()->ajax()) {
            $query = Product::with('category');

            return DataTables::of($query)->addColumn('action', function($item) {
                return '
                    <a class="inline-block border border-blue-700 bg-blue-700 text-white rounded-md px-2 py-1 m-1 transition duration-500 ease select-none hover:bg-blue-800 focus:outline-none focus:shadow-outline"
                        href="' . route('dashboard.product.gallery.index', $item->id) . '">
                            Gallery
                    </a>
                    <a class="inline-block border border-gray-700 bg-gray-700 text-white rounded-md px-2 py-1 m-1 transition duration-500 ease select-none hover:bg-gray-800 focus:outline-none focus:shadow-outline" 
                        href="' . route('dashboard.product.edit', $item->id) . '">
                            Edit
                    </a>
                    <form class="inline-block" action="' . route('dashboard.product.destroy', $item->id) . '" method="POST">
                        <button class="border border-red-500 bg-red-500 text-white rounded-md px-2 py-1 m-2 transition duration-500 ease select-none hover:bg-red-600 focus:outline-none focus:shadow-outline" >
                            Hapus
                        </button> 
                        ' . method_field('delete') . csrf_field() .'
                    </form>
                ';
            })->rawColumns(['action'])->make();
        }

        return view('pages.dashboard.product.index');
    }

    public function create()
    {
        // TODO: return view create
        $categories = ProductCategory::all();
        return view('pages.dashboard.product.create', compact('categories'));
    }

    public function store(ProductRequest $request)
    {
        // TODO: create product to database
        $data = $request->all();
        Product::create($data);

        return redirect()->route('dashboard.product.index');
    }

    public function show($id)
    {
        //
    }

    public function edit(Product $product)
    {
        // TODO: Edit the data product
        $categories = ProductCategory::all();
        return view('pages.dashboard.product.edit', [
            'item' => $product,
            'categories' => $categories
        ]);
    }

    public function update(ProductRequest $request, Product $product)
    {
        // TODO: update data in database
        $data = $request->all();
        $product->update($data);

        return redirect()->route('dashboard.product.index');
    }

    public function destroy(Product $product)
    {
        // TODO: delete product in database
        $product->delete();

        return redirect()->route('dashboard.product.index');
    }
}
