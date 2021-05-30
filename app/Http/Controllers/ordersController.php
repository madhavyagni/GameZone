<?php

namespace App\Http\Controllers;
use App\Models\product;
use App\Models\order;
use App\Models\basket;
use App\Http\Resources\ProductsResource;
use App\Models\User;
use Illuminate\Http\Request;

class ordersController extends Controller
{
    public function orders(Request $request)
    {
        $current_user = auth()->user();
        $user_id = $current_user->id;
        $product = $request->product;
        $name = $request->name;
        $lname = $request->lname;
        $address = $request->address;
        $address2 = $request->address2;
        $state = $request->state;
        $city = $request->city;
        $zip = $request->zip;
        $num = $request->num;

        if($address2 == null){
            $address2 = 'null';
        }

        foreach( $product as $item ){
            $orderItem = new order();
            $orderItem->product_id = $item['product_id'];
            $orderItem->name = $item['product']['name'];
            $orderItem->price = $item['price'];
            $orderItem->qty = $item['qty'];
            $orderItem->user_id = $user_id;
            $orderItem->fname = $name;
            $orderItem->lname = $lname;
            $orderItem->address = $address;
            $orderItem->address2 = $address2;
            $orderItem->state = $state;
            $orderItem->city = $city;
            $orderItem->zip = $zip;
            $orderItem->num = $num;
            $orderItem->orderstatus = 'pending';
            $orderItem->paymentstatus = 'pending';
            $orderItem->ordertype = 'Cash On Delivery';
            $res = $orderItem->save();
        }
        if($res){
            return response()->json(['status'=> true, 'message'=>'added']);
        }else{
            return response()->json(['status'=> false, 'message'=>'Failed']);
        }
    }

    public function removeItemOrders(Request $request) {
        // $id = $request->productid;
        $current_user = auth()->user();
        $user_id = $current_user->id;
        $productId = $request->productid;
        foreach( $productId as $item ){
            $result = basket::destroy($item['id']);
        }

        $basket_count = basket::where('user_id', $user_id)->sum('qty');
        if($result){
            return response()->json(['status'=> true, 'message'=>'Removed successfully', 'basket_count' => $basket_count]);
        }else{
            return response()->json(['status'=> false, 'message'=>'Failed to remove', 'basket_count' => $basket_count]);
        }

    }

    public function ordered() {
        return new ProductsResource(order::where('user_id', auth()->user()->id)->with('product')->orderBy('id', 'DESC')->paginate(6));
    }

    public function orderDetails($id,$id2) {
        $product = order::find($id);
        return $product;
    }

    public function orderDetails2($id,$id2) {
        $product2 = product::find($id2);
        return $product2;
    }
    public function cancelOrdere(Request $request) {

        $id = $request->orderid;

        $order = order::where('id', $id)->first();
        $order->orderstatus = 'cancelled';
        $res = $order->save();

        if($res){
            return response()->json(['status'=> true, 'message'=>'cancelled successfully']);
        }else{
            return response()->json(['status'=> false, 'message'=>'Failed to cancell']);
        }

    }

    public function verifyAdmin() {
        $current_user = auth()->user();
        $user_id = $current_user->id;
        $product = User::find($user_id);
        return $product;
    }
}
