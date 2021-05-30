<?php

namespace App\Http\Controllers;

use App\Models\basket;
use App\Models\product;
use Illuminate\Http\Request;

class cartController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $basket = basket::where('user_id', auth()->user()->id)->with('product')->get();
        return $basket;
    }
    public function store(Request $request)
    {
        $current_user = auth()->user();
        $user_id = $current_user->id;
        $product_id = $request->productid;
        $qyt = 1;
        $product = product::find($product_id);

        $basket = basket::where('product_id', $product_id)->where('user_id', $user_id)->first();

        if (!$basket) {
            $res = basket::create([
                'product_id' => $product_id,
                'user_id' => $user_id,
                'qty' => 1,
                'price' => $product->sale_price,
            ]);
            $basket_count = basket::where('user_id', $user_id)->sum('qty');

            if ($res) {
                return response()->json(['status' => true, 'message' => 'Added to cart successfully', 'basket_count' => $basket_count], 200);
            }
        } else {
            $basket->qty += 1;
            $basket->price += $product->sale_price;
            $res2 = $basket->save();
            $basket_count = basket::where('user_id', $user_id)->sum('qty');

            if ($res2) {
                return response()->json(['status' => true, 'message' => 'Cart updated successfully', 'basket_count' => $basket_count], 200);
            }
        }
    }

    public function getCount()
    {
        $current_user = auth()->user();
        $user_id = $current_user->id;
        $basket_count = basket::where('user_id', $user_id)->sum('qty');
        return response()->json(["basket_count" => $basket_count], 200);
    }

    public function removeItem(Request $request)
    {
        // $id = $request->productid;
        $current_user = auth()->user();
        $user_id = $current_user->id;
        $result = basket::destroy($request->productid);
        $basket_count = basket::where('user_id', $user_id)->sum('qty');
        if ($result) {
            return response()->json(['status' => true, 'message' => 'Removed successfully', 'basket_count' => $basket_count]);
        } else {
            return response()->json(['status' => false, 'message' => 'Failed to remove']);
        }

    }

    public function incCount(Request $request)
    {
        $id = $request->id;
        $current_user = auth()->user();
        $user_id = $current_user->id;
        $basket = basket::where('id', $id)->first();
        $productId = $basket->product_id;
        $product = product::where('id', $productId)->first();
        $basket->qty = $basket->qty+1;
        $basket->price = $basket->price+$product->sale_price;
        $result = $basket->save();
        $basket_count = basket::where('user_id', $user_id)->sum('qty');
        if ($result) {
            return response()->json(['status' => true, 'message' => 'qty increased', 'basket_count' => $basket_count]);
        } else {
            return response()->json(['status' => false, 'message' => 'Failed']);
        }

    }

    public function decCount(Request $request)
    {
        $id = $request->id;
        $current_user = auth()->user();
        $user_id = $current_user->id;
        $basket = basket::where('id', $id)->first();
        $productId = $basket->product_id;
        $product = product::where('id', $productId)->first();
        $basket->qty = $basket->qty-1;
        $basket->price = $basket->price-$product->sale_price;
        $result = $basket->save();
        $basket_count = basket::where('user_id', $user_id)->sum('qty');
        if($basket->qty == 0){
            $res = basket::destroy($id);
            if ($res) {
                return response()->json(['status' => true, 'message' => 'Removed successfully', 'basket_count' => $basket_count]);
            } else {
                return response()->json(['status' => false, 'message' => 'Failed']);
            }
        }
        if ($result) {
            return response()->json(['status' => true, 'message' => 'qty decreased', 'basket_count' => $basket_count]);
        } else {
            return response()->json(['status' => false, 'message' => 'Failed']);
        }

    }

}
