<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use App\Models\User;
use App\Models\Pemesanan;
use Carbon\Carbon;

class PemesananController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $pemesanan = Pemesanan::all();

        if(count($pemesanan) > 0){
            return response([
                'message' => 'Retrieve All Success',
                'data' => $pemesanan
            ],200);
        }

        return response([
            'message' => 'Empty',
            'data' => null
        ], 400);
    }



    public function store(Request $request)
    {
        $storeData = $request->all();

        $validate = Validator::make($storeData, [
            'id_user' => 'required',
            'tipe_kamar' => 'required',
            'harga_dasar' => 'required',
            'harga' => 'required',
            'tanggal_checkin' => 'required',
            'tanggal_checkout' => 'required',
            'qr_code' => 'required'
        ]);


        if($validate->fails())
        return response(['message' => $validate->errors()], 400);

        $pemesanan = Pemesanan::create($storeData);
        return response([
            'message' => 'Add Pemesanan Success',
            'data' => $pemesanan
        ], 200);
    }
    
    public function update(Request $request, int $id){
        $pemesanan = Pemesanan::find($id);

        if (!$pemesanan) {
            return response([
                'message' => 'Pemesanan not found',
                'data' => null
            ], 404);
        }

        $update = $request->all();

        $validate = Validator::make($update, [
            'id_user' => 'required',
            'tipe_kamar' => 'required',
            'harga_dasar' => 'required',
            'harga' => 'required',
            'tanggal_checkin' => 'required',
            'tanggal_checkout' => 'required',
            'qr_code' => 'required'
        ]);

        if ($validate->fails()) {
            return response(['message' => $validate->errors()], 400);
        }

        // Update the fields
        $pemesanan->id_user = $update['id_user'];
        $pemesanan->tipe_kamar = $update['tipe_kamar'];
        $pemesanan->harga_dasar = $update['harga_dasar'];
        $pemesanan->harga = $update['harga'];
        $pemesanan->tanggal_checkin = $update['tanggal_checkin'];
        $pemesanan->tanggal_checkout = $update['tanggal_checkout'];
        $pemesanan->qr_code = $update['qr_code'];

        // Save the changes
        if ($pemesanan->update()) {
            return response([
                'message' => 'Update pemesanan success',
                'data' => $pemesanan
            ], 200);
        } else {
            return response([
                'message' => 'Update pemesanan failed',
                'data' => null
            ], 500);
        }
    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $pemesanan = Pemesanan::find($id);

        if(!is_null($pemesanan)){
            return response([
                'message' => 'pemesanan found, it is '.$pemesanan->pemesananname,
                'data' => $pemesanan
            ], 200);
        }

        return response([
            'message' => 'User Not Found',
            'data' => null
        ], 400);
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $pemesanan = Pemesanan::find($id);

        if(is_null($pemesanan)){
            return response([
                'message' => 'Delete Not Found',
                'data' => null
            ], 404);
        }

        if($pemesanan ->delete()){
            return response([
                'message' => 'Delete pemesanan Success',
                'data' => $pemesanan
            ], 200);
        }

        return response([
            'message' => 'Delete pemesanan Failed',
            'data' => null
        ], 400);
    }
}