<?php

namespace App\Http\Controllers\API\User;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Auth\Events\PasswordReset;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Password;

class UserController extends Controller
{
    public function editUser(Request $request){
            $data = $request->validate([
                'id' => 'nullable|integer',
                'name' => 'nullable|string',
                'email' => 'nullable|string',
                'phone' => 'nullable|string'
            ]);

        $dataUser = User::where('id', $data['id'])->first();

            if ($dataUser && count($data) > 1){
                if (isset($data['name'])) $dataUser->update(['name' => $data['name']]);

                if (isset($data['email'])) {
                    if($dataUser->email === $data['email']) unset($data['email']);
                    if (DB::table('users')->where('email', $data['email'])->first()) return response()->json(['message' => 'Пользователь с такой почтой уже существует!'],
                        403);

                    $dataUser->update(['email' => $data['email']]);
                }
                if (isset($data['phone'])) $dataUser->update(['number' => $data['phone']]);

                return response()->json(['status' => true]);
            } else{
                return response()->json(['status' => false]);
            }
    }

    public function resetPasswordEmail(Request $request){
        $user = User::query()->where('email', $request->only('email'))->first();

        if ($user !== null) {
                $request->only('email');
                $token = app('auth.password.broker')->createToken($user);

            Mail::send('mail.resetPass', ['token' => $token, 'user' => $user], function($message) use ($user) {
                $message->to($user->email);
                $message->subject('Сброс пароля');
            });
             return back()->with('status', 'Ссылка для сброса пароля отправлена на вашу почту!');
        }
        else{
            return response()->json(['message' => 'Пользователя с такой почтой не существует!'], 403);
        }
    }

    public function resetPassword(Request $request){
        $status = Password::reset(
            $request->only('email', 'password', 'password_confirmation', 'token'),
            function (User $user, string $password){
                $user->forceFill([
                    'password' => Hash::make($password)
                ]);
                $user->save();
                event(new PasswordReset($user));
            }
        );

        return $status === Password::PASSWORD_RESET ? response()->json(['message' => 'Пароль успешно изменён'], 200)
            : response()->json(['message' => 'Произошла ошибка'], 500);
    }
}
