<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Feedback;
use Illuminate\Support\Facades\Validator;

class FeedbackController extends Controller
{
    public function index()
    {
        $feedback = Feedback::all();

        if (count($feedback) > 0) {
            return response([
                'message' => 'Retrieve All Success',
                'data' => $feedback
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
            'feedback' => 'required',
        ]);


        if ($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $feedback = Feedback::create($storeData);

        return response([
            'message' => 'Add Feedback Success',
            'data' => $feedback
        ], 200);
    }

    public function show(string $id)
    {
        $feedback = Feedback::find($id);

        if (!is_null($feedback)) {
            return response([
                'message' => 'feedback found',
                'data' => $feedback
            ], 200);
        }

        return response([
            'message' => 'Review Not Found',
            'data' => null
        ], 400);
    }

    public function update(Request $request, int $id)
    {
        $feedback = Feedback::find($id);

        if (!$feedback) {
            return response([
                'message' => 'feedback not found',
                'data' => null
            ], 404);
        }

        $update = $request->all();

        $validate = Validator::make($update, [
            'id_user' => 'required',
            'feedback' => 'required',
        ]);

        if ($validate->fails()) {
            return response(['message' => $validate->errors()], 400);
        }

        // Update the fields
        $feedback->id_user = $update['id_user'];
        $feedback->feedback = $update['feedback'];

        // Save the changes
        if ($feedback->update()) {
            return response([
                'message' => 'Update feedback success',
                'data' => $feedback
            ], 200);
        } else {
            return response([
                'message' => 'Update feedback failed',
                'data' => null
            ], 500);
        }
    }

    public function destroy(string $id)
    {
        $feedback = Feedback::find($id);

        if (is_null($feedback)) {
            return response([
                'message' => 'Delete Not Found',
                'data' => null
            ], 404);
        }

        if ($feedback->delete()) {
            return response([
                'message' => 'Delete feedback Success',
                'data' => $feedback
            ], 200);
        }

        return response([
            'message' => 'Delete feedback Failed',
            'data' => null
        ], 400);
    }

    public function searchByUserId($id_user)
    {
        $feedback = Feedback::where('id_user', $id_user)->get();

        if (count( $feedback) > 0) {
            return response([
                'message' => 'feedback found for user with id ' . $id_user,
                'data' => $feedback 
            ], 200);
        }

        return response([
            'message' => 'feedback not found for user with id ' . $id_user,
            'data' => null
        ], 404);
    }
}
