<?php

namespace App\Http\Controllers\API\FeedBack;

use App\Http\Controllers\Controller;
use App\Mail\FeedBack\FBC;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class FBController extends Controller
{
    public function __invoke(Request $request)
    {
            $data = $request->validate([
                'name' => 'nullable|string',
                'email' => 'required|string',
                'content' => 'required|string',
                'title' => 'nullable|string',
                'number_phone' => 'nullable|string'
            ]);

            Mail::to('onetaphack@gmail.com')->send((new FBC($data))->with('data', $data));
    }
}
