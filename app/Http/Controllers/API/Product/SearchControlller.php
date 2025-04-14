<?php

namespace App\Http\Controllers\API\Product;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SearchControlller extends Controller
{
    public function __invoke(Request $request)
    {
        $s = $request->validate(['title' => 'nullable']);
        $products = DB::table('products')->where('title', 'like', '%' . $s['title'] . '%')->get();

        return $products;
    }
}
