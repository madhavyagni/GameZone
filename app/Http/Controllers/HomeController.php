<?php

namespace App\Http\Controllers;
use App\Models\product;
use App\Http\Resources\ProductsResource;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return new ProductsResource(product::inRandomOrder()->paginate(6));
    }

    public function getDetails($id) {
        $product = product::find($id);
        return $product;
    }
    public function showGcards(){
        return new ProductsResource(product::where('cat','gcards')->paginate(6));
    }
    public function showAccessories(){
        return new ProductsResource(product::where('cat','accessories')->paginate(6));
    }
    public function showCabinets(){
        return new ProductsResource(product::where('cat','cabinets')->paginate(6));
    }
    public function showConsoles(){
        return new ProductsResource(product::where('cat','consoles')->paginate(6));
    }
    public function showCpu(){
        return new ProductsResource(product::where('cat','cpu')->paginate(6));
    }
    public function showMonitors(){
        return new ProductsResource(product::where('cat','monitors')->paginate(6));
    }
    public function showPrebult(){
        return new ProductsResource(product::where('cat','prebult')->paginate(6));
    }
    public function bestSelling(){
        $all = product::where('bestselling',1)->inRandomOrder()->get();
        return $all;
    }

    public function similar(Request $request){
        $all = product::where('cat', $request->cat)->inRandomOrder()->get();
        return $all;
    }

    function search($term)
    {
        return new ProductsResource(product::where('name', 'like', '%'.$term.'%')->paginate(6));
    }

    public function showAsus(){
        return new ProductsResource(product::where('brand','asus')->paginate(6));
    }
    public function showMsi(){
        return new ProductsResource(product::where('brand','msi')->paginate(6));
    }
    public function showNvidia(){
        return new ProductsResource(product::where('brand','nvidia')->paginate(6));
    }
    public function showZotac(){
        return new ProductsResource(product::where('brand','zotac')->paginate(6));
    }
    public function showSony(){
        return new ProductsResource(product::where('brand','sony')->paginate(6));
    }
    public function showXbox(){
        return new ProductsResource(product::where('brand','xbox')->paginate(6));
    }
    public function showLenovo(){
        return new ProductsResource(product::where('brand','lenovo')->paginate(6));
    }
    public function showLogitech(){
        return new ProductsResource(product::where('brand','logitech')->paginate(6));
    }
}
