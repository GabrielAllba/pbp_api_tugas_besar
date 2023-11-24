<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use App\Models\User;
use Carbon\Carbon;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user = User::all();

        if(count($user) > 0){
            return response([
                'message' => 'Retrieve All Success',
                'data' => $user
            ],200);
        }

        return response([
            'message' => 'Empty',
            'data' => null
        ], 400);
    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $user = User::find($id);

        if(!is_null($user)){
            return response([
                'message' => 'User found, it is '.$user->username,
                'data' => $user
            ], 200);
        }

        return response([
            'message' => 'User Not Found',
            'data' => null
        ], 400);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $user = User::find($id);
        
        $update = $request->all();
        $validate = validator::make($update,[
            'username' => 'required|max:60',
            'email' => [
                'required',
                'email:rfc,dns',
                Rule::unique('users')->ignore($user->id),
            ],
            'no_telp' => [
                'required',
                'regex:/^08[0-9]{9,11}$/'
            ],
            'tgl_lahir' => 'required',
        ]);

        if($validate->fails()){
            return response(['message'=> $validate->errors()],400);
        }
        
        $user->username = $update['username'];
        $user->email = $update['email'];
        $user->no_telp = $update['no_telp'];
        $user->tgl_lahir = $update['tgl_lahir'];

        if($user->save()){
            return response([
                'message' => 'Update User Success',
                'data' => $user
            ],200);
        }

        return response([
            'message' => 'Update User Failed',
            'user' => null
        ],200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $user = User::find($id);

        if(is_null($user)){
            return response([
                'message' => 'Delete Not Found',
                'data' => null
            ], 404);
        }

        if($user ->delete()){
            return response([
                'message' => 'Delete user Success',
                'data' => $user
            ], 200);
        }

        return response([
            'message' => 'Delete user Failed',
            'data' => null
        ], 400);
    }
}