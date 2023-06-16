<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Http\Controllers\Koperasifront\FrontController;
use App\Http\Controllers\Front\FrontCategoryProductController;
use App\Http\Controllers\Front\FrontLandingController;
use App\Http\Controllers\HomeController;
// use App\Http\Controllers\RoleController;
// use App\Http\Controllers\UserController;
// use App\Http\Controllers\PermissionController;
// use App\Http\Controllers\DashboardController;
use App\Http\Controllers\WebsetupController;

use App\Http\Controllers\Product\BrandController;
use App\Http\Controllers\Product\CategoryController;
use App\Http\Controllers\Product\SubCategoryController;
use App\Http\Controllers\Product\ProductAdditionalController;
use App\Http\Controllers\Product\ProductController;

use App\Http\Controllers\Front\FrontProductController;
use App\Http\Controllers\Front\FrontCartController;

use App\Http\Controllers\Back\CrudBuilderController;
use App\Http\Controllers\Back\ApiBuilderController;

use App\Http\Controllers\Back\DashboardController;
use App\Http\Controllers\Back\UserController;
use App\Http\Controllers\RoleController;

use App\Http\Controllers\Back\Setting_web\Setting_webController;
use App\Http\Controllers\Back\Setting_menu\Setting_menuController;
use App\Http\Controllers\Back\Permissions\PermissionsController;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Illuminate\Support\Facades\DB;

$res_setting_route = DB::select('select * from setting_route where deleted = "false"');
//dd($res_setting_route[0]->route_name);
for ($r=0; $r < count($res_setting_route); $r++) { 
    Route::resource($res_setting_route[$r]->route_name, $res_setting_route[$r]->controller_name);
}

$dataresource = array(
    ["setting_menu","Setting_menuController::class"],
    ["permissions", "PermissionsController::class"],
    ["setting_web", "Setting_webController::class"]
);



    Route::get('/crud', [CrudBuilderController::class, 'index'])->name('crud.index');
    Route::post('/crud', [CrudBuilderController::class, 'index'])->name('crud.index');

    Route::get('/apibuilder', [ApiBuilderController::class, 'index'])->name('apibuilder.index');
    Route::post('/apibuilder', [ApiBuilderController::class, 'index'])->name('apibuilder.index');


// Route::get('/', [FrontLandingController::class, 'index'])->name('landing');
Route::get('/', function () {
    return view('front.login');
});


Route::get('fcategoryproduct', [FrontCategoryProductController::class, 'index'])->name('fcategoryproduct.index');
Route::get('forget-password', [ForgotPasswordController::class, 'showForgetPasswordForm'])->name('forget.password.get');
Route::post('forget-password', [ForgotPasswordController::class, 'submitForgetPasswordForm'])->name('forget.password.post');
Route::get('reset-password/{token}', [ForgotPasswordController::class, 'showResetPasswordForm'])->name('reset.password.get');
Route::post('reset-password', [ForgotPasswordController::class, 'submitResetPasswordForm'])->name('reset.password.post');
Route::get('/crudbuilder', [CrudBuilderController::class, 'index']);



Auth::routes();

Route::get('file', [FileController::class, 'create']);
Route::post('file', [FileController::class, 'store']);
Route::get('/index', [App\Http\Controllers\HomeController::class, 'index']);
Route::get('/memberaddress', [App\Http\Controllers\Member\MemberAddressBoardController::class, 'index'])->name('memberaddress.list');;
Route::post('/memberaddress', [App\Http\Controllers\Member\MemberAddressBoardController::class, 'store'])->name('memberaddress.store');;

Route::post('loginas', [UserController::class, 'loginas'])->name('users.loginas');
Route::get('loginas', [UserController::class, 'loginas'])->name('users.loginas');

Route::group(['middleware' => ['auth']], function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
    // Route::resource('admin/dashboard', DashboardController::class);
    Route::resource('admin/websetup', WebsetupController::class);
    Route::resource('fpdf', FpdfController::class);
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);

    Route::resource('news', NewsController::class);
    Route::resource('newscategory', NewsCategoryController::class);
    Route::resource('permissions', PermissionsController::class);

    Route::resource('admin/brand', BrandController::class);
    Route::resource('admin/category', CategoryController::class);
    Route::resource('admin/subcategory', SubCategoryController::class);
    Route::resource('admin/additionalproduct', AdditionalProductController::class);
    Route::resource('admin/product', ProductController::class);



    Route::get('/menu', [FrontProductController::class, 'menu'])->name('menu.index');
    Route::get('/submenu', [FrontProductController::class, 'submenu'])->name('submenu.index');

    Route::get('/cart', [FrontCartController::class, 'cartList'])->name('cart.list');
    Route::post('fcart', [FrontCartController::class, 'addToCart'])->name('cart.store');
    Route::post('fcart-modal', [FrontCartController::class, 'addToCartModal'])->name('cartmodal.store');
    Route::post('update-cart', [FrontCartController::class, 'updateCart'])->name('cart.update');
    Route::post('update-cart-gifting', [FrontCartController::class, 'updateCartGifting'])->name('cart.update.gifting');
    Route::post('remove', [FrontCartController::class, 'removeCart'])->name('cart.remove');
    Route::post('clear', [FrontCartController::class, 'clearAllCart'])->name('cart.clear');
    Route::post('cart-update-discount', [FrontCartController::class, 'updateDiscountCart'])->name('cart.updatediscount');


});

// category
Route::post('admin/category/store', [App\Http\Controllers\Product\CategoryController::class, 'store'])->name('category.store');
Route::get('admin/category/show/{id}', [App\Http\Controllers\Product\CategoryController::class, 'show'])->name('category.show');
Route::post('admin/category/update/{id}', [App\Http\Controllers\Product\CategoryController::class, 'update'])->name('category.update');
Route::get('admin/category/destroy/{id}', [App\Http\Controllers\Product\CategoryController::class, 'destroy'])->name('category.destroy');

// subcategory
Route::post('admin/subcategory/store', [App\Http\Controllers\Product\SubcategoryController::class, 'store'])->name('subcategory.store');
Route::get('admin/subcategory/show/{id}', [App\Http\Controllers\Product\SubcategoryController::class, 'show'])->name('subcategory.show');
Route::post('admin/subcategory/update/{id}', [App\Http\Controllers\Product\SubcategoryController::class, 'update'])->name('subcategory.update');
Route::get('admin/subcategory/destroy/{id}', [App\Http\Controllers\Product\SubcategoryController::class, 'destroy'])->name('subcategory.destroy');

// brand
Route::post('admin/brand/store', [App\Http\Controllers\Product\BrandController::class, 'store'])->name('brand.store');
Route::get('admin/brand/show/{id}', [App\Http\Controllers\Product\BrandController::class, 'show'])->name('brand.show');
Route::post('admin/brand/update/{id}', [App\Http\Controllers\Product\BrandController::class, 'update'])->name('brand.update');
Route::get('admin/brand/destroy/{id}', [App\Http\Controllers\Product\BrandController::class, 'destroy'])->name('brand.destroy');

Route::get('/slider-load', [CommonLoaderController::class, 'loadSlider']);
Route::post('/product-carousel-load', [CommonLoaderController::class, 'loadCarouselCategory']);
Route::get('/product-data-load/{collection}/{form}/{sorting}', [CommonLoaderController::class, 'loadProductData']);

// master
Route::get('/master', function () {
    return view('ui/master', [
        "title" => "master",
        "pages" => "master"
    ]);
});



// ============================================ UI TEMPLATE

Route::get('/waiters/', function () {
    return view('waiters/landing', [
        "title" => "Welcome",
        "pages" => "landing"
    ]);
});

Route::get('/waiters/menu', function () {
    return view('waiters/menu', [
        "title" => "Our Menu",
        "pages" => "menu"
    ]);
});

Route::get('/waiters/order', function () {
    return view('waiters/order', [
        "title" => "Order",
        "pages" => "order"
    ]);
});

Route::get('/waiters/checkout', function () {
    return view('waiters/checkout', [
        "title" => "checkout",
        "pages" => "checkout"
    ]);
});
