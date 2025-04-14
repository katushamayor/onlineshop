<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\ProductTag;

class ShowController extends Controller
{
    public function __invoke(Product $product, ProductImage $productImage)
    {
        $productImage = ProductImage::all();
        if (!empty($productImage[0])){
            $productImage = $productImage[0];
        }
        $category = Category::find($product->category_id);
        $tags = ProductTag::join('tags', 'tags.id', '=', 'product_tags.tag_id')->
        select('tags.title', 'tags.id')->where('product_id', $product->id)->get();
        $tag = '';
        foreach ($tags as $item) {
            $tag = $item->title;
        }
        return view('product.show', compact('product', 'productImage', 'category', 'tag'));
    }
}
