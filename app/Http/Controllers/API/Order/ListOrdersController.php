<?php

namespace App\Http\Controllers\API\Order;

use App\Http\Controllers\Controller;
use App\Http\Resources\Order\OrderResource;
use App\Models\Order;
use App\Models\User;
use Illuminate\Http\Request;
use Validator;


class ListOrdersController extends Controller
{
    public function __invoke(Order $order, $user)
    {
        $data = Order::where('user_id', $user)->get();
        $orders = [];
        if (!$data) return response()->json(['message' => null]);

        foreach ($data as $key => $order) {
            $decodedProducts = json_decode($order->products, true);
            $products = [];
            foreach ($decodedProducts as $product){
                $products[] = [
                    'id' => $product['id'],
                    'image_url' => $product['image_url'],
                    'title' => $product['title'],
                    'price' => $product['price'],
                    'qty' => $product['qty']
                ];
            }
            $orders[] = [
                'id' => $order->id,
                'products' => $products,
                'total_price' => $order->total_price
            ];
        }
        return response()->json($orders);
    }
}
