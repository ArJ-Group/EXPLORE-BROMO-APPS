<?php

namespace App\Http\Controllers\WEB;

use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    // TODO: index
    public function index() {
        return view('dashboard');
    }
}
