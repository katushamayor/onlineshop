<?php

namespace App\Http\Controllers\Main;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Product;
use App\Models\Reviews;
use App\Models\User;

class indexController extends Controller
{
    public function __invoke()
    {
        $count_orders = Order::count();
        $summ_orders = 0;
        $orders = Order::all();
        foreach ($orders as $order){
            $summ_orders += $order->total_price;
        }
        $count_products = Product::count();
        $count_users = User::count();
        $count_reviews = Reviews::count();

        return view('main.index', compact('count_orders', 'count_products', 'count_users', 'summ_orders', 'count_reviews'));
    }
}
