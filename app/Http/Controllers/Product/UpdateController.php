<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\Controller;
use App\Http\Requests\Product\UpdateRequest;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\ProductPlatforms;
use App\Models\ProductTag;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class UpdateController extends Controller
{
    public function __invoke(UpdateRequest $request, Product $product, Category $category)
    {
        $data = $request->validated();
        $category->id = $product->category_id;
        $productImages = '';
        $tags = '';
        if (array_key_exists('preview_image', $data)){
            $data['preview_image'] = Storage::disk('public')->put('/images', $data['preview_image']);
        }

        if(isset($data['tags'])){
            $tags = $data['tags'];
            $old_tags = ProductTag::where('product_id', $product->id)->pluck('tag_id')->toArray();
            $deleted_tags = array_diff($old_tags, $tags);
            foreach ($tags as $tag){
                ProductTag::updateOrCreate([
                    'tag_id' => $tag,
                    'product_id' => $product->id
                ]);
            }
            foreach ($deleted_tags as $deleted_tag) {
                ProductTag::where('tag_id', $deleted_tag)->where('product_id', $product->id)->delete();
            }

        }

       if (isset($data['product_images'])){
            $productImages = $data['product_images'];
            $currentImages = ProductImage::where('product_id', $product->id)->get();
           foreach($productImages as $index => $p_img) {
                $filePath = Storage::disk('public')->put('/images', $p_img);
                    ProductImage::create(
                        ['product_id' => $product->id,
                        'file_path' => $filePath]);
            }
        }
       if (isset($data['platforms'])){
           foreach ($data['platforms'] as $platform) {
               ProductPlatforms::query()->updateOrCreate([
                   'platform_id' => $platform,
                   'product_id' => $product->id
               ]);
           }

       }

       unset($data['product_images'], $data['tags'], $data['platforms']);

       $product->update($data);



        return view('product.show', compact('product', 'category', 'tags', 'productImages'));
    }
}
