<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(Request $request)
    {
        return view('/welcome');
    }
    public function dashboard(Request $request)
    {
        return view('dashboard');
    }
}
