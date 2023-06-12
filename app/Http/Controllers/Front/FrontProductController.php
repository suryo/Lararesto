<?php

namespace App\Http\Controllers\Front;


use App\Models\File;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class FrontProductController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function menu(Request $request)
    {

        $category = DB::select('select * from pos_category');
        $subcategory = DB::select('select * from pos_sub_category');
        $product = DB::select('select p.*, b.name as brand, c.name as category, sc.name as subcategory from pos_products as p
        LEFT JOIN pos_brand as b on b.id = p.id_brand
        LEFT JOIN pos_category as c on c.id = p.id_category
        LEFT JOIN pos_sub_category as sc on sc.id = p.id_sub_category');
        $title = "Menu";
		$pages = "landing";

        //dd($category);
        return view('waiters/landing',compact('title','pages','category','subcategory','product'));
    }

    public function submenu(Request $request)
    {
        $menu = $_GET["menu"];
        $category = DB::select('select * from pos_category where id = '.$menu);
        $subcategory = DB::select('select * from pos_sub_category where category_id = '.$menu);
        if (isset($_GET["menu"])) {
            $subcategory = DB::select('select * from pos_sub_category where category_id = '.$menu);
            $res_product = DB::select('select p.*, b.name as brand, c.name as category, sc.name as subcategory from pos_products as p
            LEFT JOIN pos_brand as b on b.id = p.id_brand
            LEFT JOIN pos_category as c on c.id = p.id_category
            LEFT JOIN pos_sub_category as sc on sc.id = p.id_sub_category where p.id_category = '.$menu);
        } else {
            $subcategory = DB::select('select * from pos_sub_category');
            $res_product = DB::select('select p.*, b.name as brand, c.name as category, sc.name as subcategory from pos_products as p
            LEFT JOIN pos_brand as b on b.id = p.id_brand
            LEFT JOIN pos_category as c on c.id = p.id_category
            LEFT JOIN pos_sub_category as sc on sc.id = p.id_sub_category');
        }

        $product = [];
        for ($p=0; $p < count($res_product); $p++) {
            $res_additional = DB::select("select * from pos_additional_products where id_product=".$res_product[$p]->id);
            $res_variant = [];
            if ($res_product[$p]->variant<>"") {
                $res_variant = DB::select("select * from pos_products where variant=".$res_product[$p]->variant);
            }
          
            $res_product[$p]->additional = $res_additional;
            $res_product[$p]->variant = $res_variant;
            array_push($product, $res_product[$p]);
        }

        //dd($product);
 
        $title = "Submenu";
		$pages = "Submenu";

        return view('waiters/submenu',compact('title','pages','category','subcategory', 'product'));
    }

    
}