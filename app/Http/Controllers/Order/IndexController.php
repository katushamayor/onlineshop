<?php

namespace App\Http\Controllers\Order;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index(){
        $orders = Order::all();
        $orders = json_decode($orders, true);
        return view('order.index', compact('orders'));
    }
}
