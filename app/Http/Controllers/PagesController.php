<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;
use App\Category;
use App\Pro_detail;
use DB;
use Cart;

class PagesController extends Controller
{
    public function index()
    {
        $cat = Category::all();
        $pronew = DB::table('products')
                ->join('category', 'products.cat_id', '=', 'category.id')
                ->orderBy('created_at', 'desc')
                ->select('products.*','products.slug','category.slug as c_slug')
                ->paginate(6);
        
        return view('front-end.home', ['cat'=>$cat, 'pronew' => $pronew]);
    }

    public function getcate($id,$cat_slug)
    {
        $cat = Category::all();

        $cat1 =Category::where('id',$id)->first();
        
        if(empty($cat1)){
            return view ('errors.404');
        }else{
            $name = $cat1->name;
            $pro = DB::table('products')
                ->join('category', 'products.cat_id', '=', 'category.id')
                ->where('cat_id','=',$cat1->id)
                ->select('products.*', 'products.slug', 'category.slug as c_slug')
                ->paginate(12);
            return view('front-end.category.cat',['cat'=>$cat, 'pro'=>$pro,'name_cat'=>$name ]);
        }
    }

    public function detail($cat_slug,$id,$slug)
    {
        $cat = Category::all();
        $cat1 = Category::where('slug', 'like', $cat_slug)->first();
        if(empty($cat1)){
            return view ('errors.404');
        }else{
            $inf_pro = Products::where('cat_id',$cat1->id)->paginate(6);
            $pro = Products::where('id',$id)->first();
            return view('front-end.detail.pro-detail',['cat'=>$cat, 'pro'=>$pro, 'proinfo'=>$inf_pro]);
        }
    }

    public function getcart()
    {   
    	return view ('front-end.detail.cart');
    }

    public function addcart($id)
    {
        $pro = Products::where('id',$id)->first();
        Cart::add(['id' => $pro->id, 'name' => $pro->name, 'qty' => 1, 'price' => $pro->price,'weight' => 0,'options' => ['images' => $pro->images]]);
        return redirect()->route('getcart');
    }

    public function deletecart($id)
    {
        Cart::remove($id);
        return redirect()->route('getcart');
    }

    public function updatecart($id,$qty,$ac)
    {
        if($ac == 'up')
        {
            $qt = $qty+1;
            Cart::update($id, $qt);
            return redirect()->route('getcart');
        } elseif ($ac=='down') {
            $qt = $qty-1;
            Cart::update($id, $qt);
            return redirect()->route('getcart');
        } else {
            return redirect()->route('getcart');
        }
    }

}
