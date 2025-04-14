<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\Controller;
use App\Models\ProductImage;
use Illuminate\Http\Request;

class DeleteImage extends Controller
{
    public function __invoke(Request $request)
    {
        ProductImage::query()->where('id', $request->id)->delete();

        return response()->json(['message' => "Успешное удаление"], 200);
    }
}
