<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\User\StoreRequest;
use App\Http\Requests\User\UpdateRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UpdateController extends Controller
{
    public function __invoke(UpdateRequest $request, User $user)
    {
        $data = $request->validated();

        if ($data['email'] === $user->email) unset($data['email']);

        if (isset($data['email'])) {
            if (DB::table('users')->where('email', $data['email'])->first()) {
                return response()->json(['message' => 'Пользователь с такой почтой уже существует!']);
            }
        }

        if (isset($data['is_admin'])){
            $user->is_admin = $data['is_admin'];
            unset($data['is_admin']);
        }

        $user->update($data);

        return view('user.show', compact('user'));
    }
}
