<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Platforms;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\ProductPlatforms;
use App\Models\ProductTag;
use App\Models\Tag;

class EditController extends Controller
{
    public function __invoke(Product $product)
    {
        $tags = Tag::all();
        $categories = Category::all();
        $images = ProductImage::query()->where('product_id', $product->id)->get();
        $platforms = Platforms::all();

        return view('product.edit', compact('product', 'tags',
            'categories', 'images', 'platforms'));
    }
}
