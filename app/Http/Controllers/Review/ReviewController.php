<?php

namespace App\Http\Controllers\Review;

use App\Http\Controllers\Controller;
use App\Models\Reviews;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function deleteRev($id)
    {
        $reviews = Reviews::query()->where('id', $id)->first();
        $reviews->delete();

        return redirect()->route('review.index');
    }

    public function edit(Request $request,$review){
        $data = $request->validate([
            'score' => 'nullable',
            'name' => 'nullable',
            'email' => 'nullable',
            'title' => 'nullable',
            'description' => 'nullable',
             ]);
        $reviews = Reviews::query()->where('id', $review)->first();
        $reviews->update([
            'score' => $data['score'],
            'name' => $data['name'],
            'email' => $data['email'],
            'title' => $data['title'],
            'description' => $data['description']
        ]);

        return redirect()->route('review.index');
    }

    public function show($id){
        $review = Reviews::query()->where('id', $id)->first();

        return view('review.edit', compact('review'));
    }
}
