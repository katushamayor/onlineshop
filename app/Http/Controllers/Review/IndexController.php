<?php

namespace App\Http\Controllers\Review;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Reviews;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function __invoke()
    {
        $reviews = Reviews::all();

        return view('review.index', compact('reviews'));
    }
}
