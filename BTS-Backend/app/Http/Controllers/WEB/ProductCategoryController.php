<?php

namespace App\Http\Controllers\WEB;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProductCategoryRequest;
use App\Models\ProductCategory;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class ProductCategoryController extends Controller
{
    public function index()
    {
        // TODO: first time call the page
        if (request()->ajax()) {
            $query = ProductCategory::query();

            return DataTables::of($query)->addColumn('action', function($item) {
                return '
                <a class="inline-block border border-gray-700 bg-gray-700 text-white rounded-md px-2 py-1 m-1 transition duration-500 ease select-none hover:bg-gray-800 focus:outline-none focus:shadow-outline" 
                    href="'. route("dashboard.category.edit", $item->id) .'"> 
                        Edit 
                </a>
                <form class="inline-block" action="'. route('dashboard.category.destroy', $item->id) . '" method="POST">
                    <button class="border border-red-500 bg-red-500 text-white rounded-md px-2 py-1 m-2 transition duration-500 ease select-none hover:bg-red-600 focus:outline-none focus:shadow-outline">
                        Hapus
                    </button>
                    '. method_field('delete') . csrf_field().'
                </form>';
            })->rawColumns(['action'])->make();
        }

        return view('pages.dashboard.category.index');
    }

    public function create()
    {
        // TODO: go to view category.create
        return view('pages.dashboard.category.create');
    }

    public function store(ProductCategoryRequest $request)
    {
        // TODO: Create and store data
        $data = $request->all();
        ProductCategory::create($data);

        return redirect()->route('dashboard.category.index');
    }

    public function edit(ProductCategory $category)
    {
        // TODO: Open view edit
        return view('pages.dashboard.category.edit', [
            'item' => $category
        ]);
    }

    public function update(ProductCategoryRequest $request, ProductCategory $category)
    {
        // TODO: To update data 
        $data = $request->all();
        $category->update($data);

        return redirect()->route('dashboard.category.index');
    }

    public function destroy(ProductCategory $category)
    {
        // TODO: to delete data
        $category->delete();

        return redirect()->route('dashboard.category.index');
    }
}
