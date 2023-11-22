<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Validation\Rule;
use Symfony\Component\HttpKernel\Event\ResponseEvent;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;


class AuthController extends Controller
{
    public function register(Request $request){
        $registrationData = $request->all();

        $validate = Validator::make($registrationData, [
            'username' => 'required|max:60',
            'email' => 'required|email:rfc,dns|unique:users',
            'password' => 'required|min:8',
            'no_telp' => [
                'required',
                'regex:/^08[0-9]{9,11}$/'
            ],
            'tgl_lahir' => 'required',
        ]);

        if ($validate->fails()) {
            return response(['message' => $validate->errors()], 400);
        }


        // password
        $registrationData['password'] = bcrypt($request->password);

        $user = User::create($registrationData);

        return response([
            'message' => 'Register Success',
            'user' => $user,
        ], 200);
    }

    public function login(Request $request){
        $loginData = $request->all();

        $validate = Validator::make($loginData,[
            'email' => 'required|email:rfc,dns',
            'password' => 'required'
        ]);

        if($validate->failed()){
            return response(['message' => $validate->errors()],400);
        }

        if(!Auth::attempt($loginData)){
            return response(['message' => 'Invalid Credential'], 401);
        }

        /** @var \App\Models\User $user  **/
        $user = Auth::user();
        $token = $user->createToken('Authentication Token')->accessToken;

        return response([
            'message' => 'Authenticated',
            'user' => $user,
            'token_type' => 'Bearer',
            'access_token' => $token
        ], 200);
    }
}