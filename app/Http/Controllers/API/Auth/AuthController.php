<?php

namespace App\Http\Controllers\API\Auth;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Tymon\JWTAuth\Facades\JWTAuth;
use Validator;
use \App\Http\Controllers\Controller;
use \App\Http\Requests\User\StoreRequest;
use App\Models\User;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login', 'refresh', 'register']]);
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function register(StoreRequest $request){
        $data = $request->validated();
        if(isset($data['password'])) {
            $data['password'] = Hash::make($data['password']);
        }
        else{
            return response()->json(['message' => 'Поле пароля не заполнено!']);
        }

        $user = User::where('email', $data['email'])->first();
        if ($user === true) return response(['message' => 'Пользователь с такой почтой уже существует!'], 403);

        $user = User::create($data);
        $token = auth()->tokenById($user->id);

        Mail::to($data['email'])->send((new RegisterNotifaction($data['login']))->with('data', $data));

        return response([
            'status' => true,
            'access_token' => $token
        ]);
    }

    public function login()
    {
        $credentials = request(['login', 'password']);

        if (! $token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'Неправильный логин или пароль!'], 401);
        }

        return $this->respondWithToken($token);
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        return response()->json(auth()->user());
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth()->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken(auth()->refresh());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60
        ]);
    }
//    public function __construct()
//    {
//        $this->middleware('auth:api', ['except' => 'login']);
//    }
//
//    public function addUser(StoreRequest $request){
//        $data = $request->validated();
//        $user = new User;
//        $user->login = $data['login'];
//        $user->password = Hash::make($data['password']);
//        $user->name = $data['name'];
//        $user->email = $data['email'];
//        $user->number = $data['number'];
//        $user->is_admin = false;
//        $user->save();
//
//        return response()->json([
//            'status' => true,
//            'user' => $user
//        ]);
//    }
//
//    public function loginUser(Request $request){
//        $data = $request->validate([
//            'login' => 'required',
//            'password' => 'required'
//        ]);
//        if (!$token = auth()->attempt($data)){
//            return response()->json(['error' => 'Unauthorized'], 401);
//        }
//        return $this->respondWithToken($token);
//        $user = User::where('login', $data['login'])->first();
//        if (!$user || !Hash::check($data['password'], $user->password)){
//            return response()->json([
//                'status' => false,
//                'message' => 'fail'
//            ]);
//        }
//        $token = auth()->login($user);
//
//        JWTAuth::fromUser($user);
//        return response()->json([
//            'status' => true,
//            'token' => $token
//        ], 200);

   // }

//    public function user(){
//        $user = auth()->user();
//        return response()->json([
//            'status' => true,
//            'user' => $user
//        ]);
//    }
//
//    protected function respondWithToken($token){
//        return response()->json([
//            'access_token' => $token,
//            'token_type' => 'bearer',
//            'expires_in' => auth()->factory()->getTTL() * 60
//        ]);
//    }
}
