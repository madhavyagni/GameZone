<?php

namespace App\Http\Controllers;

use App\Models\basket;
use App\Models\order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class paymentController extends Controller
{
    public function onlinePay(Request $request)
    {
        order::where('paymentstatus', 'failedM')->update(['paymentstatus' => 'failed', 'orderstatus' => 'failed']);

        $current_user = auth()->user();
        $user_id = $current_user->id;
        $user_email = $current_user->email;
        $product = $request->product;
        $name = $request->name;
        $lname = $request->lname;
        $address = $request->address;
        $address2 = $request->address2;
        $state = $request->state;
        $city = $request->city;
        $zip = $request->zip;
        $num = $request->num;

        if ($address2 == null) {
            $address2 = 'null';
        }

        foreach ($product as $item) {
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
            $orderItem->orderstatus = 'failedM';
            $orderItem->paymentstatus = 'failedM';
            $orderItem->ordertype = 'Online';
            $res = $orderItem->save();
        }

        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, 'https://test.instamojo.com/api/1.1/payment-requests/');
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER,
            array("X-Api-Key:test_86a5fb0135703cd9571cc5e0f13",
                "X-Auth-Token:test_d72445510c805dd470b9637a03b"));
        $payload = array(
            'purpose' => 'Buying from Game Zone',
            'amount' => $request->amount,
            'phone' => $num,
            'buyer_name' => $name,
            'redirect_url' => 'http://127.0.0.1:8000/payment-success',
            'send_email' => true,
            'send_sms' => true,
            'email' => $user_email,
            'allow_repeated_payments' => false,
        );
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($payload));
        $response = curl_exec($ch);
        curl_close($ch);
        return $response;
    }
    public function paymentSuccess(Request $request)
    {
        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, 'https://test.instamojo.com/api/1.1/payments/' . $request->get('payment_id'));
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER,
            array("X-Api-Key:test_86a5fb0135703cd9571cc5e0f13",
                "X-Auth-Token:test_d72445510c805dd470b9637a03b"));
        $response = curl_exec($ch);
        $err = curl_error($ch);
        curl_close($ch);

        if ($err) {
            return Redirect::to('http://127.0.0.1:8000/failed');
        } else {
            $data = json_decode($response);
        }

        if ($data->success == true) {
            if ($data->payment->status == 'Credit') {
                order::where('paymentstatus', 'failedM')->update(['paymentstatus' => 'success', 'orderstatus' => 'pending']);
                basket::truncate();
                return Redirect::to('http://127.0.0.1:8000/success');
            } else if ($data->payment->status == 'Failed') {
                return Redirect::to('http://127.0.0.1:8000/failed');
            }
        } else {
            order::where('paymentstatus', 'failedM')->update(['paymentstatus' => 'failed', 'orderstatus' => 'failed']);

            return Redirect::to('http://127.0.0.1:8000/failed');
        }
    }
}
