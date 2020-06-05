<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;

class AuthController extends Controller
{
    //
    public function showloginform()
   {
       return view('front-end.auth.login');
   }

   public function login(Request $request)
   {
        $arr = [
            'username' => $request->Username, 
            'password' => $request->Password
        ];

        if(Auth::attempt($arr))
        {
            return redirect()->route('getindex');
        }else{
            return view('front-end.auth.login',['error'=>'UserName hoặc Password sai']);
        }
   }

   public function logout(){
    Auth::logout();
    return redirect()->route('getindex');
}

}
