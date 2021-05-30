<?php

namespace App\Http\Controllers;

use App\Models\product;
use App\Http\Resources\ProductsResource;
use App\Models\order;
use Illuminate\Http\Request;

class adminController extends Controller
{
    public function storeProduct(Request $request)
    {
        $product = new product();

        if ($request->has('image') && !empty($request->image)) {
            $imagename = time() . 'main.' . $request->image->getClientOriginalExtension();
            $request->image->move(public_path('images'), $imagename);
            $path = ($imagename);
            $product->image_name = $path;
        }
        if ($request->has('image') && !empty($request->image1)) {
            $imagename = time() . '1.' . $request->image1->getClientOriginalExtension();
            $request->image1->move(public_path('images'), $imagename);
            $path = ($imagename);
            $product->image_name1 = $path;
        }
        if ($request->has('image') && !empty($request->image2)) {
            $imagename = time() . '2.' . $request->image2->getClientOriginalExtension();
            $request->image2->move(public_path('images'), $imagename);
            $path = ($imagename);
            $product->image_name2 = $path;
        }
        if ($request->has('image') && !empty($request->image3)) {
            $imagename = time() . '3.' . $request->image3->getClientOriginalExtension();
            $request->image3->move(public_path('images'), $imagename);
            $path = ($imagename);
            $product->image_name3 = $path;
        }
        if ($request->has('image') && !empty($request->image4)) {
            $imagename = time() . '4.' . $request->image4->getClientOriginalExtension();
            $request->image4->move(public_path('images'), $imagename);
            $path = ($imagename);
            $product->image_name4 = $path;
        }

        $product->name = $request->name;
        $product->slug = $request->slug;
        $product->description = $request->description;
        $product->details = $request->details;
        $product->specification = $request->specification;
        $product->price = $request->price;
        $product->sale_price = $request->sale_price;
        $product->cat = $request->cat;
        $product->brand = $request->brand;
        $product->bestselling = $request->bestselling;

        $result = $product->save();

        if ($result) {
            return response()->json(['status' => true, 'message' => 'Added successfully']);
        } else {
            return response()->json(['status' => false, 'message' => 'Failed to add record']);
        }
    }

    public function removeListAdmin(Request $request)
    {
        $result = product::destroy($request->productid);

        if ($result) {
            return response()->json(['status' => true, 'message' => 'Removed successfully']);
        } else {
            return response()->json(['status' => false, 'message' => 'h']);
        }

    }

    public function getProduct($id)
    {
        $product = product::find($id);

        return $product;
    }

    public function editProduct(Request $request, $id)
    {
        $product = product::where('id', $id)->first();

        if ($request->has('image') && !empty($request->image)) {
            $imagename = time() . 'main.' . $request->image->getClientOriginalExtension();
            $request->image->move(public_path('images'), $imagename);
            $path = ($imagename);
            $product->image_name = $path;
        }
        if ($request->has('image') && !empty($request->image1)) {
            $imagename = time() . '1.' . $request->image1->getClientOriginalExtension();
            $request->image1->move(public_path('images'), $imagename);
            $path = ($imagename);
            $product->image_name1 = $path;
        }
        if ($request->has('image') && !empty($request->image2)) {
            $imagename = time() . '2.' . $request->image2->getClientOriginalExtension();
            $request->image2->move(public_path('images'), $imagename);
            $path = ($imagename);
            $product->image_name2 = $path;
        }
        if ($request->has('image') && !empty($request->image3)) {
            $imagename = time() . '3.' . $request->image3->getClientOriginalExtension();
            $request->image3->move(public_path('images'), $imagename);
            $path = ($imagename);
            $product->image_name3 = $path;
        }
        if ($request->has('image') && !empty($request->image4)) {
            $imagename = time() . '4.' . $request->image4->getClientOriginalExtension();
            $request->image4->move(public_path('images'), $imagename);
            $path = ($imagename);
            $product->image_name4 = $path;
        }

        $product->name = $request->name;
        $product->slug = $request->slug;
        $product->description = $request->description;
        $product->details = $request->details;
        $product->specification = $request->specification;
        $product->price = $request->price;
        $product->sale_price = $request->sale_price;
        $product->cat = $request->cat;
        $product->brand = $request->brand;
        $product->bestselling = $request->bestselling;

        $result = $product->save();

        if ($result) {
            return response()->json(['status' => true, 'message' => 'Updated successfully']);
        } else {
            return response()->json(['status' => false, 'message' => 'Failed to update record']);
        }
    }

    // public function orderss() {
    //     $orders = order::where('def', 1)->with('usr')->with('product')->get();
    //     return $orders;
    // }

    public function orderss() {
        return new ProductsResource(order::where('def', 1)->with('usr')->with('product')->orderBy('id', 'DESC')->paginate(6));
    }

    public function delOrder(Request $request)
    {
        $result = order::destroy($request->orderid);

        if ($result) {
            return response()->json(['status' => true, 'message' => 'Removed successfully']);
        } else {
            return response()->json(['status' => false, 'message' => 'h']);
        }

    }

    public function getOrder($id)
    {
        $order = order::find($id);

        return $order;
    }

    public function editOrder(Request $request, $id)
    {
        $order = order::where('id', $id)->first();

        $order->name = $request->name;
        $order->price = $request->price;
        $order->orderstatus = $request->orderstatus;
        $order->paymentstatus = $request->paymentstatus;
        $order->ordertype = $request->ordertype;

        $result = $order->save();

        if ($result) {
            return response()->json(['status' => true, 'message' => 'Updated successfully']);
        } else {
            return response()->json(['status' => false, 'message' => 'Failed to update record']);
        }
    }
}
