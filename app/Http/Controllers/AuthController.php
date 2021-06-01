<?php

namespace App\Http\Controllers;

//use http\Client\Curl\User;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Hash;
use Symfony\Component\HttpFoundation\Response;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        return User::create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'password' => Hash::make($request->input('password'))
        ]);
//        return 'www';
    }

    public function login(Request $request)
    {
//        return response()->json(['ww' => 'ee'], 401);
        if (!Auth::attempt(
           $request->only('email', 'password')
        ))
        {
            return response([
                'message' => 'invalid credentials'
            ], Response::HTTP_UNAUTHORIZED);
        }

        $user = Auth::user();

//        return response([
//           'message' => 'www'
//        ]);
        $token = $user->createToken('token')->plainTextToken;

        $cookie = cookie('jwt', $token, 60 * 24);
//        $cookie = cookie('jwt', $token, 60 * 24, '/', 'localhost', true, true, false, 'none');
//        $cookie = cookie('www', 'eee', 60 * 24);

        return response([
            'message' => $token,
            'user' => $user,
            'cookie' => $request->cookie('jwt')
        ])->withCookie($cookie);

        //
    }

    public function logout()
    {
        $cookie = Cookie::forget('jwt');

        return response([
           'message' => 'success'
        ])->withCookie($cookie);
    }

    public function user()
    {
        return Auth::user();
    }
}
