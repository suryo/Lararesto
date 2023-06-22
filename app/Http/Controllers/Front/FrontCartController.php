<?php

namespace App\Http\Controllers\Front;


// use App\Models\Product_model;
// use App\Models\Product_collection_model;
// use App\Models\Product_type_model;
// use App\Models\Product_form_model;
// use App\Models\Product_package_model;
// use App\Models\Product_free_gift_model;
// use App\Models\File;
use Illuminate\Http\Request;
use App\Models\Member_redeem_log_model;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Darryldecode\Cart\Facades\CartFacade as Cart;
use Illuminate\Support\Facades\Auth;


class FrontCartController extends Controller
{

    public function chooseGift(Request $request)
    {

        #menyimpan id gift box pada session untuk digunakan pada view blade
        Session::put('gift', $request->id);

        $gift_product = $this->getFreeGift();
        $gift = [];
        foreach ($gift_product as $key => $items) {
            $gft = $items;
            $gft->gift_box_id = "GIFT-" . $items->gift_box_id;
            $gft->gift_box_images =  $items->gift_box_images;

            if (!empty($items->fileimages)) {
                $gft->gift_box_images = (json_decode($items->fileimages))[0];
            } else {
                $gft->gift_box_images = null;
            }
            array_push($gift, $gft);
        }

        $cartItems = \Cart::getContent();
        //dd($cartItems);
        $gift_box_id_chosen = $request->id;

        #check apakah gift box sudah pernah dipilih client
        if ($gift_box_id_chosen === 'null') {
            #gift box belum pernah dipilih
            $gift_box_id = $gift_product[0]->gift_box_id;
            $gift_box_images =  $gift_product[0]->gift_box_images;
            $gift_box_name = $gift_product[0]->gift_box_name;
            $gift_box_minimum_order = $gift_product[0]->gift_box_minimum_order;
            $gift_box_real_price = $gift_product[0]->gift_box_real_price;
            $gift_box_images = $gift_product[0]->gift_box_images;
            $product_weight = $gift_product[0]->product_weight;
            $gift_box_gramature = $product_weight;
        } else {
            #gift box sudah pernah dipilih
            $filtered = array();
            $rows = $gift;
            foreach ($rows as $index => $columns) {
                foreach ($columns as $key => $value) {
                    if ($key == 'product_id' && $value ==  $gift_box_id_chosen) {
                        $filtered[] = $columns;
                    }
                }
            }

            $gift_box_id = $filtered[0]->gift_box_id;
            $gift_box_images =  $filtered[0]->gift_box_images;
            $gift_box_name = $filtered[0]->gift_box_name;
            $gift_box_minimum_order = $filtered[0]->gift_box_minimum_order;
            $gift_box_real_price = $filtered[0]->gift_box_real_price;
            $gift_box_images = $filtered[0]->gift_box_images;
            $product_weight = $filtered[0]->product_weight;
            $gift_box_gramature = $product_weight;
        }


        #check condition apakah sub total sudah memungkinkan mendapatkan free gift box
        if (Cart::getSubTotal() >   $gift_box_minimum_order) {
            $payload = [
                'status1' => "success1",
                'subtotal' => Cart::getSubTotal(),
                'min order' => $gift_box_minimum_order
            ];

            if (empty($cartItems[$gift_box_id])) {
                $payload = [
                    'status11' => "success11",
                    'subtotal' => Cart::getSubTotal(),
                    'min order' => $gift_box_minimum_order
                ];
                $this->AddItemCart($gift_box_id, $gift_box_name, 0, 1, $gift_box_gramature, $gift_box_images, "FREEGIFT");
            }
        } else if (Cart::getSubTotal() <   $gift_box_minimum_order) {
            $payload = [
                'status2' => "success2",
                'subtotal' => \Cart::getSubTotal(),
                'min order' => $gift_box_minimum_order
            ];
            $this->RemoveItemCart($gift_box_id);
        }

        $payload = [
            'status' => "success",
            'id' => Session::get('gift'),
            '$gift_box_id' => $gift_product[0]->gift_box_id,
            '$gift_box_images' => $gift_product[0]->gift_box_images,
            '$gift_box_name' => $gift_product[0]->gift_box_name,
            '$gift_box_minimum_order' => $gift_product[0]->gift_box_minimum_order,
            '$gift_box_real_price' => $gift_product[0]->gift_box_real_price,
            '$gift_box_images' => $gift_product[0]->gift_box_images,
            '$product_weight' => $gift_product[0]->product_weight,
            '$gift_box_gramature' => $product_weight

        ];

        $result = \json_encode($payload);


        return $payload;
    }

    public function cartList(Request $request)
    {
        //\Cart::clear();
        \Cart::clearCartConditions();
        session(['totalbeforediscount' => \Cart::getTotal()]);
       

        $cartItems = \Cart::getContent();
        dump($cartItems);
        #ambil session id gift yang dipilih
        $gift_box_id_chosen = Session::get('gift');

 
    
        ## get data cart
        $cartItem = \Cart::getContent();
        $cartItems = $cartItem->sort();

        //dump($cartItems);
        $product = [];
        $keranjang = [];
        foreach ($cartItems as $key => $items) {
        //$items->price = $items->price;
        if (condition) {
            # code...
        }
        $normalisasi_id_item = str_replace('menu-', '', $items->id);
        $iditem = ((explode("-",$normalisasi_id_item))[0]);
        $intid =(int)$iditem;
        $sql = "select * from pos_additional_products as ap INNER JOIN pos_additional as a on ap.id_additional = a.id where ap.id_product='".$intid."' and ap.deleted='false'";
        dump($sql);
        $items->additional=DB::select("select * from pos_additional_products as ap INNER JOIN pos_additional as a on ap.id_additional = a.id where ap.id_product='".$intid."' and ap.deleted='false'");
       dd($items->additional);
        array_push($product, $items);
        //dump($iditem);
        }
         dd($product[0]->additional);

        $title = "Cart";
        $pages = "cart";
        return view('waiters/cart', compact('cartItems', 'title', 'pages', 'product'));
        // return view('front/cart', compact('cartItems', 'title', 'pages'));
    }

    public function updateDiscountCart(Request $request)
    {
        \Cart::clearCartConditions();
        $discount = null;
        $coupon = $request->coupon;

        session(['totalbeforediscount' => \Cart::getTotal()]);
        ## code discount
        if (isset($_POST['resetdiscount'])) {

            if (isset($_POST['coupon'])) {
                $couponcode = $_POST['coupon'];
                dump($couponcode);
            }
            if (isset($_POST['coupon-id'])) {
                $couponid = $_POST['coupon-id'];
                dump($couponid);
            }
            if (isset($_POST['coupon-status'])) {
                $couponstatus = $_POST['coupon-status'];
                dump($couponstatus);
            }



            DB::table('member_vouchers_models')
                ->where('id', $couponid)
                ->update(['status' => 'unused']);

            $conditionName = 'coupon';
            \Cart::removeCartCondition($conditionName);
            $coupon = null;
            session(['unggas' => null]);
        } else if ((isset($_POST['adddiscount']))) {
            $voucher = app('App\Http\Controllers\Vouchers\VouchersController')->getVouchers($coupon);

            if (isset($_POST['coupon'])) {
                $coupon = $_POST['coupon'];
            }
            if (isset($_POST['coupon-id'])) {
                $couponid = $_POST['coupon-id'];
            }
            if (isset($_POST['coupon-status'])) {
                $couponstatus = $_POST['coupon-status'];
            }

            DB::table('member_vouchers_models')
                ->where('id', $couponid)
                ->update(['status' => 'used']);


            if (!empty($voucher[0])) {



                if ($voucher[0]->nominalpersen <> 0) {
                    $value = "-" . $voucher[0]->nominalpersen . "%";
                    $discount = ((\Cart::getTotal()) * ($voucher[0]->nominalpersen / 100));
                } else if ($voucher[0]->nominalbulat <> 0) {
                    $value = "-" . $voucher[0]->nominalbulat;
                    $discount = (($voucher[0]->nominalbulat));
                }


                if ($discount > $voucher[0]->maxdiscount) {
                    $discount = $voucher[0]->maxdiscount;
                    $value = "-" . ($voucher[0]->maxdiscount);
                }

                //dd($discount);
                $condition = new \Darryldecode\Cart\CartCondition(array(
                    'name' => 'coupon',
                    'type' => 'coupon',
                    'target' => 'subtotal', // this condition will be applied to cart's total when getTotal() is called.
                    'value' => $value,
                    'order' => 1 // the order of calculation of cart base conditions. The bigger the later to be applied.
                ));
                // $discount = ((\Cart::getTotal()) * ($voucher[0]->nominalpersen / 100));
            } else {
                $condition = new \Darryldecode\Cart\CartCondition(array(
                    'name' => 'coupon',
                    'type' => 'coupon',
                    'target' => 'subtotal', // this condition will be applied to cart's total when getTotal() is called.
                    'value' => '0',
                    'order' => 1 // the order of calculation of cart base conditions. The bigger the later to be applied.
                ));
                $coupon = null;
            }

            \Cart::condition($condition);
        }
        $descdisc = (object)array(
            "name" => $coupon,
            "discount" => $discount,

        );


        session()->flash('success', 'Item Cart is Updated Successfully !');

        return redirect()->route('cart.list', ['coupon' => $coupon, 'couponid' => $couponid, 'couponstatus' => $couponstatus])
            ->with('discount', $discount)
            ->with('coupon', $coupon)
            ->with('couponid', $couponid)
            ->with('couponstatus', $couponstatus);;
    }




    public function addToCart(Request $request)
    {   

        $cartItem = \Cart::getContent();
        $cartItems = $cartItem->sort();

       

        # fungsi untuk cek apakah menu yang di tambahkan pada cart sudah ada atau belum ada
        $checkstatus = false;
        $countitem = 1;
        foreach ($cartItems as $key) {
            if($key->id == $request->id)
            {
                $checkstatus = true;
              

            }
            if (strpos($key->id, $request->id) !== false)
            {
                $countitem = $countitem + 1;
            }
        }

        #additional start

$res_additional = json_decode($request->additional);
//dd(($additional));
        #additional end

        // dump($request->additional);
        // $test = $request->additional;
        // '{item0:{"id":5,"name":"NASI JAGUNG","price":12000},item1:{"id":6,"name":"NASI MERAH","price":12000},item2:{"id":7,"name":"NASI PUTIH","price":12000}}'
        //dd(json_decode($jsn));

        dump($request->id);
        dump($request->name);
        dump($request->quant);
        dump($request->stock);
        dump($request->stockweb);
        dump($request->price);
        dump($request->images);

        dump($request->description);
        dump($request->portion);
        dump($request->units);
        dump($request->brand);
        dump($request->category);
        dump($request->subcategory);
        //dd("masuk ke cart")     ;
      
        $qty = 1;
        $types = "NORMAL";
        $qty = $request->quant;
        $types = $request->types;
        $id_category = $request->id_category;  
        
        //dump($id_category);
       
        //$this->AddItemCart($request->id, $request->name, $request->price, $qty, $request->images, $types,$request->description, $request->portion, $request->units, $request->brand, $request->category, $request->subcategory);
        if($checkstatus==true)
        {
            Cart::remove($request->id);
            // dd("barang sudah di hapus");
        }
        //dd("barang ditambahkan");
        $this->AddItemCart("menu-".$request->id.'-'. $countitem, $request->name, $request->price, $qty, $request->images, $types,$request->description, $request->portion, $request->units, $request->brand, $request->category, $request->subcategory, $id_category);
        if ($res_additional != null){
            for ($i = 0; $i < count($res_additional); $i++) {
                dump($res_additional);
                $add = $res_additional[$i];
                //$this->AddItemCart($request->id.'-'. $countitem, $request->name, $request->price, $qty, $request->images, $types,$request->description, $request->portion, $request->units, $request->brand, $request->category, $request->subcategory, $id_category);
                $this->AddItemCart('add-' . $add->id . '|' . $request->id . '-' . $countitem,  $add->name, $add->price, $add->qty, "", $types,"", "", "", "", "", "", "");
            }
        }

        //dd(\Cart::getContent());

        return redirect()
        ->route('submenu.index',"menu=".$id_category)
        ->with([
            'modal' => $request->id
        ]);
      
        
    }

    public function addToCartModal(Request $request)
    {
        $types = "NORMAL";
        $this->AddItemCart($request->id, $request->name, $request->price, $request->quantity, $request->gramature, $request->images, $types);
        $this->GiftBoxCart();
        session(['totalbeforediscount' => \Cart::getTotal()]);
        return redirect()
            ->route('fproducts.index')
            ->with([
                'modal' => $request->id
            ]);
    }

    public function updateCart(Request $request)
    {
       
        $value = 0;
        //## kondisi saat qty barang dikurangi
        if (isset($_POST['minus'])) {
            if ($request->quantity > 1) {
                $value = $request->quantity - 1;
                $this->UpdateItemCart($request->id, $value);
            } else {
                $this->RemoveItemCart($request->id);
            }
            # Publish-button was clicked

            //## kondisi saat qty barang dikurangi
        } elseif (isset($_POST['plus'])) {
            if ($request->quantity < 100) {
                $value = $request->quantity + 1;
                $this->UpdateItemCart($request->id, $value);
            }
        }
        $this->GiftBoxCart();
        session(['totalbeforediscount' => \Cart::getTotal()]);
        session()->flash('success', 'Item Cart is Updated Successfully !');
        return redirect()->route('cart.list');
    }

    public function removeCart(Request $request)
    {
        //dd($request->id);
        $items = \Cart::getContent();
        \Cart::remove($request->id);
        session()->flash('success', 'Item Cart Remove Successfully !');
        return redirect()->route('cart.list');
    }

    public function clearAllCart()
    {
        \Cart::clear();
        session(['totalbeforediscount' => \Cart::getTotal()]);
        session()->flash('success', 'All Item Cart Clear Successfully !');
        return redirect()->route('cart.list');
    }

    public function getFreeGift()
    {
        $product_free_gift_models_res =  DB::select('select fg.product_id,
            fg.minimum_order,
            fg.status as status_gift,
            pm.*, pcm.product_collection_name, ptm.product_type_name,
                pfm.product_form_name,
                ppm.product_package_name,
            (select discount_models.discount from discount_models 
            LEFT JOIN discount_cluster_models as dcm on discount_models.discount_cluster_id = dcm.id
            where  (NOW() >= dcm.active_date AND NOW() <= dcm.off_date) and discount_models.product_id = pm.id
						 ) 
						as disc_event,
						(select dcm.nama from discount_models 
            LEFT JOIN discount_cluster_models as dcm on discount_models.discount_cluster_id = dcm.id
            where  (NOW() >= dcm.active_date AND NOW() <= dcm.off_date) and discount_models.product_id = pm.id
						 ) 
						as event_promo
            from product_free_gift_models as fg 
            LEFT JOIN product_models as pm on pm.id = fg.product_id
            LEFT JOIN product_collection_models as pcm on pcm.id = pm.product_collection
            LEFT JOIN product_type_models as ptm on ptm.id = pm.product_collection
            LEFT JOIN product_form_models as pfm on pfm.id = pm.product_collection
            LEFT JOIN product_package_models as ppm on ppm.id = pm.product_collection
						where fg.status ="active"');

        $gift = [];



        foreach ($product_free_gift_models_res as $key => $items) {
            $gft = $items;
            $gft->gift_box_id = ($items->product_id);
            $gft->gift_box_name = ($items->product_name);
            $gft->gift_box_minimum_order = ($items->minimum_order);
            $gft->gift_box_real_price = ($items->product_price);
            $gft->min_gift_box_real_price = $gft->gift_box_real_price * -1;

            if (!empty($items->fileimages)) {
                $gft->gift_box_images = (json_decode($items->fileimages))[0];
            } else {
                $gft->gift_box_images = null;
            }

            array_push($gift, $gft);
        }
        return $gift;
    }
    public function AddItemCart($id, $name, $price, $qty, $images, $types,$description, $portion, $units, $brand, $category, $subcategory, $idcategory)
    {
        //if($types =='Giftset')

        \Cart::add(
            [
                'id' => $id,
                'name' => $name,
                'price' => $price*1000,
                'quantity' => $qty,
                'attributes' => array(
                    'description' => $description,
                    'portion' => $portion,
                    'units' => $units,
                    'images' => $images,
                    'types' => $types,
                    'brand' => $brand,
                    'category' => $category,
                    'subcategory' => $subcategory,
                    'idcategory' => $idcategory,
                )
            ]
        );
    }
    public function UpdateItemCart($id, $value)
    {
        \Cart::update(
            $id,
            [
                'quantity' => [
                    'relative' => false,
                    'value' => $value
                ],
            ]
        );
    }
    public function RemoveItemCart($id)
    {
        //dd($id);
        \Cart::remove($id);
    }
    public function GiftBoxCart()
    {
        //$gift = $this->getFreeGift();
        $gift_product = $this->getFreeGift();
        $gift = [];
        foreach ($gift_product as $key => $items) {
            $gft = $items;

            $gft->gift_box_id = "GIFT-" . $items->gift_box_id;
            $gft->gift_box_images =  $items->gift_box_images;

            if (!empty($items->fileimages)) {
                $gft->gift_box_images = (json_decode($items->fileimages))[0];
            } else {
                $gft->gift_box_images = null;
            }

            array_push($gift, $gft);
        }

        $cartItems = \Cart::getContent();
        $gift_box_id_chosen = Session::get('gift');

        #check apakah gift box sudah pernah dipilih client
        if ($gift_box_id_chosen === 'null') {
            #gift box belum pernah dipilih
            $gift_box_id = $gift_product[0]->gift_box_id;
            $gift_box_images =  $gift_product[0]->gift_box_images;
            $gift_box_name = $gift_product[0]->gift_box_name;
            $gift_box_minimum_order = $gift_product[0]->gift_box_minimum_order;
            $gift_box_real_price = $gift_product[0]->gift_box_real_price;
            $gift_box_images = $gift_product[0]->gift_box_images;
            $product_weight = $gift_product[0]->product_weight;
            $gift_box_gramature = $product_weight;
        } else {
            #gift box sudah pernah dipilih
            $filtered = array();
            $rows = $gift;
            foreach ($rows as $index => $columns) {
                foreach ($columns as $key => $value) {
                    if ($key == 'product_id' && $value ==  $gift_box_id_chosen) {
                        $filtered[] = $columns;
                    }
                }
            }

            if ($filtered) {
                $gift_box_id = $filtered[0]->gift_box_id;
                $gift_box_images =  $filtered[0]->gift_box_images;
                $gift_box_name = $filtered[0]->gift_box_name;
                $gift_box_minimum_order = $filtered[0]->gift_box_minimum_order;
                $gift_box_real_price = $filtered[0]->gift_box_real_price;
                $gift_box_images = $filtered[0]->gift_box_images;
                $product_weight = $filtered[0]->product_weight;
                $gift_box_gramature = $product_weight;
            } else {

                $gift_box_id = $gift_product[0]->gift_box_id;
                $gift_box_images =  $gift_product[0]->gift_box_images;
                $gift_box_name = $gift_product[0]->gift_box_name;
                $gift_box_minimum_order = $gift_product[0]->gift_box_minimum_order;
                $gift_box_real_price = $gift_product[0]->gift_box_real_price;
                $gift_box_images = $gift_product[0]->gift_box_images;
                $product_weight = $gift_product[0]->product_weight;
                $gift_box_gramature = $product_weight;
            }
        }

        #check condition apakah sub total sudah memungkinkan mendapatkan free gift box
        // if (\Cart::getSubTotal() >   $gift_box_minimum_order) {
        //     if (empty($cartItems[$gift_box_id])) {
        //         $this->AddItemCart($gift_box_id, $gift_box_name, 0, 1, $gift_box_gramature, $gift_box_images);
        //     }
        // } else 
        if (\Cart::getSubTotal() <   $gift_box_minimum_order) {
            $this->RemoveItemCart($gift_box_id);
        }
    }
}
