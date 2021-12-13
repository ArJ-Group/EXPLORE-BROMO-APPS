<?php

namespace App\Http\Controllers\WEB;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProductGalleryRequest;
use App\Http\Requests\ProductRequest;
use App\Models\Product;
use App\Models\ProductGallery;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class ProductGalleryController extends Controller
{
    public function index(Product $product)
    {
        // TODO: firts time call the controller
        if (request()->ajax()) {
            $query = ProductGallery::where('products_id', $product->id);

            return DataTables::of($query)
                ->addColumn('action', function ($item) {
                    return '
                        <form class="inline-block" action="' . route('dashboard.gallery.destroy', $item->id) . '" method="POST">
                        <button class="border border-red-500 bg-red-500 text-white rounded-md px-2 py-1 m-2 transition duration-500 ease select-none hover:bg-red-600 focus:outline-none focus:shadow-outline" >
                            Hapus
                        </button>
                        <a class="inline-block border border-gray-700 bg-gray-700 text-white rounded-md px-2 py-1 m-1 transition duration-500 ease select-none hover:bg-gray-800 focus:outline-none focus:shadow-outline" 
                        href="' . route('dashboard.product.edit', $item->id) . '">
                            Edit
                    </a>
                            ' . method_field('delete') . csrf_field() . '
                        </form>';
                })
                ->editColumn('url', function ($item) {
                    return '<img style="max-width: 150px;" src="' . $item->url . '"/>';
                })
                ->editColumn('is_featured', function ($item) {
                    return $item->is_featured ? 'Yes' : 'No';
                })
                ->rawColumns(['action', 'url'])
                ->make();
        }

        return view('pages.dashboard.gallery.index', compact('product'));
    }

    public function create(Product $product)
    {
        // TODO: call the view gallery create
        Product::all();

        return view('pages.dashboard.gallery.create', compact('product'));
    }



    public function store(ProductGalleryRequest $request, Product $product)
    {
        ProductGallery::create($request->all());

        /*
        // TODO: create new foto files
        $files = $request->file('files');

        if($request->hasFile('files'))
        {
            foreach ($files as $file) {
                // atau bisa menggunakan storage/gallery
                $path = $file->store('public/gallery');

                ProductGallery::create([
                    'products_id' => $product->id,
                    'url' => $path
                ]);
            }
        }
        */

        return redirect()->route('dashboard.product.gallery.index', $product->id);
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(ProductRequest $request, ProductGallery $gallery)
    {
        //
    }

    public function destroy(ProductGallery $gallery)
    {
        // TODO: delete file
        $gallery->delete();

        return redirect()->route('dashboard.product.gallery.index');
    }
}
