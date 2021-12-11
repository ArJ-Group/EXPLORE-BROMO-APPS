<?php

use App\Http\Controllers\WEB\ProductCategoryController;
use App\Http\Controllers\WEB\DashboardController;
use App\Http\Controllers\WEB\ProductController;
use App\Http\Controllers\WEB\ProductGalleryController;
use App\Http\Controllers\WEB\TransactionController;
use App\Http\Controllers\WEB\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group(['middleware' => ['auth:sanctum', 'verified']], function() {

    Route::name('dashboard.')->prefix('dashboard')->group(function() {
        Route::get('/', [DashboardController::class, 'index'])->name('index');

        Route::middleware(['admin'])->group(function() {
            Route::resource('product', ProductController::class);
            Route::resource('category', ProductCategoryController::class);
            Route::resource('product.gallery', ProductGalleryController::class)->shallow()->only([
                'index', 'create', 'store','destroy'
            ]);
            Route::resource('transaction', TransactionController::class)->only([
                'index', 'show', 'edit', 'update'
            ]);
            Route::resource('user', UserController::class)->only([
                'index', 'edit', 'update', 'destroy'
            ]);
        });
    });
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');