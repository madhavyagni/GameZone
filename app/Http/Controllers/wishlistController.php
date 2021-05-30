<?php

namespace App\Http\Controllers;

use App\Models\product;
use App\Models\wishlist;
use App\Http\Resources\ProductsResource;
use Illuminate\Http\Request;

class wishlistController extends Controller
{
    public function index() {
        return new ProductsResource(wishlist::where('user_id', auth()->user()->id)->with('product')->paginate(6));
    }
    public function store(Request $request)
    {
        $current_user = auth()->user();
        $user_id = $current_user->id;
        $product_id = $request->productid;
        $product = product::find($product_id);

        $wishlist = wishlist::where('product_id', $product_id)->where('user_id', $user_id)->first();

        if (!$wishlist) {
            $res = wishlist::create([
                'product_id' => $product_id,
                'user_id' => $user_id,
                'price' => $product->sale_price,
            ]);
            if($res){
                return response()->json(['status'=> true, 'message'=>'added to wishlist successfully']);
            }
        }else{
            return response()->json(['status'=> false, 'message'=>'Item already exist in wishlist']);
        }
    }
    public function removeList(Request $request) {
        $result = wishlist::destroy($request->productid);

        if($result){
            return response()->json(['status'=> true, 'message'=>'Removed successfully']);
        }else{
            return response()->json(['status'=> false, 'message'=>'h']);
        }

    }
}
