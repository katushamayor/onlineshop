<?php

namespace App\Http\Controllers\API\Order;

use App\Http\Controllers\Controller;
use App\Http\Requests\API\Order\StoreRequest;
use App\Http\Resources\Order\OrderResource;
use App\Models\Order;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;


class StoreController extends Controller
{
    public function __invoke(StoreRequest $request)
    {
        $data = $request->validated();
        $user = User::where('email', $data['email'])->first();
        $password = Hash::make(Str::random(10));

        $tempLogin = strstr($data['email'], '@', true);

        if (!$user){
            $user = User::firstOrCreate([
                'email' => $data['email'],
                'name' => $data['name'] ?? '',
                'login' => $data['login'] ?? $tempLogin,
                'number' => $data['number_phone'],
                'password' => $password,
            ]);
        }

        $order = Order::create([
            'products' => json_encode($data['products']),
            'user_id' => json_encode($user->id),
            'total_price' => $data['total_price']
        ]);

        $dataForEmail  = [
            'id' => $order['id'],
            'login' => $data['login'] ?? $tempLogin,
            'total_price' => $data['total_price'],
            'products' => $data['products']
        ];

        Mail::to($data['email'])->send((new OrderNotifaction($dataForEmail))->with('dataForEmail', $dataForEmail));

        return new OrderResource($order, $data['number_phone'], $dataForEmail);
    }
}
