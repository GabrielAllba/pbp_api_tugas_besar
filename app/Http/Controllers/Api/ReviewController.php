<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Review;
use Carbon\Carbon;

class ReviewController extends Controller
{
    public function index()
    {
        $review= Review::all();

        if (count($review) > 0) {
            return response([
                'message' => 'Retrieve All Success',
                'data' => $review
            ], 200);
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
            'review' => 'required',
            'tanggal' => 'required'
        ]);


        if ($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $review= Review::create($storeData);

        return response([
            'message' => 'Add reviewSuccess',
            'data' => $review
        ], 200);
        
    }

    public function show(string $id)
    {
        $review = Review::find($id);

        if (!is_null($review)) {
            return response([
                'message' => 'review found',
                'data' => $review
            ], 200);
        }

        return response([
            'message' => 'Review Not Found',
            'data' => null
        ], 400);
    }

    public function destroy(string $id)
    {
        $review = Review::find($id);

        if (is_null($review)) {
            return response([
                'message' => 'Delete Not Found',
                'data' => null
            ], 404);
        }

        if ($review->delete()) {
            return response([
                'message' => 'Delete review Success',
                'data' => $review
            ], 200);
        }

        return response([
            'message' => 'Delete review Failed',
            'data' => null
        ], 400);
    }

    public function searchByUserId($id_user)
    {
        $review = Review::where('id_user', $id_user)->get();

        if (count( $review) > 0) {
            return response([
                'message' => 'review found for user with id ' . $id_user,
                'data' => $review 
            ], 200);
        }

        return response([
            'message' => 'review not found for user with id ' . $id_user,
            'data' => null
        ], 404);
    }

    public function searchByNamaKamar($nama_kamar)
    {
        $review = Review::where('nama_kamar', $nama_kamar)->get();

        if (count( $review) > 0) {
            return response([
                'message' => 'review found for review with nama kamar ' . $nama_kamar,
                'data' => $review 
            ], 200);
        }

        return response([
            'message' => 'review not found for review with nama kamar' . $nama_kamar,
            'data' => null
        ], 404);
    }

    public function update(Request $request, int $id)
    {
        $review = Review::find($id);

        if (!$review) {
            return response([
                'message' => 'review not found',
                'data' => null
            ], 404);
        }

        $update = $request->all();

        $validate = Validator::make($update, [
            'id_user' => 'required',
            'review' => 'required',
            'tanggal' => 'required'
        ]);

        if ($validate->fails()) {
            return response(['message' => $validate->errors()], 400);
        }

        // Update the fields
        $review->id_user = $update['id_user'];
        $review->review = $update['review'];
        $review->tanggal = $update['tanggal'];

        // Save the changes
        if ($review->update()) {
            return response([
                'message' => 'Update review success',
                'data' => $review
            ], 200);
        } else {
            return response([
                'message' => 'Update review failed',
                'data' => null
            ], 500);
        }
    }
}