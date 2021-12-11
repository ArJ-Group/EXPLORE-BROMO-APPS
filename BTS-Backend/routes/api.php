<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\ProductController;
use App\Http\Controllers\API\ProductCategoryController;
use App\Http\Controllers\API\TransactionController;
use App\Http\Controllers\API\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
*/

// TODO: products
Route::get("products", [ProductController::class, "all"]);
Route::get("categories", [ProductCategoryController::class, "all"]);

// TODO: auth
Route::post("register", [UserController::class, "register"]);
Route::post("login", [UserController::class, "login"]);

// TODO: user
Route::middleware('auth:sanctum')->group(function() {
    Route::get("user", [UserController::class, "fetch"]);
    Route::post("user", [UserController::class, "updateProfile"]);
    Route::post("logout",[UserController::class, "logout"]);

    Route::get("transaction", [TransactionController::class, "all"]);
    Route::post("checkout", [TransactionController::class, "checkout"]);
});