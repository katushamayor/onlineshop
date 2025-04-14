<?php

namespace App\Http\Controllers\API\Product;

use App\Http\Controllers\Controller;
use App\Http\Resources\Product\ProductResource;
use App\Models\Category;
use App\Models\Product;
use App\Models\Tag;

class FilterListController extends Controller
{
    public function __invoke(Product $product)
    {

        return [
            'categories' => Category::all(),
            'tags' => Tag::all(),
            'price' => [
                'min' => Product::min('price'),
                'max' => Product::max('price')
            ]
        ];


    }
}
