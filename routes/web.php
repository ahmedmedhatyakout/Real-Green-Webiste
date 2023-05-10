<?php
  
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\ProductController;
use App\Http\Controllers\WishlistController;
use App\Http\Controllers\ContactController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/Route::get('/', function () {
    return view('index');
});

Route::get('/aboutUs', function () {
    return view('aboutUs');
});


Route::get('/search', function () {
    return view('search');
});
Route::get('/categories', function () {
    return view('categories');
});


Route::get('/wishlist', [WishlistController::class, 'index']); 
Route::get('cart', [WishlistController::class, 'cart'])->name('cart');
Route::get('add-to-cart/{id}', [WishlistController::class, 'addToCart'])->name('add.to.cart');
Route::patch('update-cart', [WishlistController::class, 'update'])->name('update.cart');
Route::delete('remove-from-cart', [WishlistController::class, 'remove'])->name('remove.from.cart');


    
Route::get('/shop', [ProductController::class, 'index']);  
Route::get('cart', [ProductController::class, 'cart'])->name('cart');
Route::get('add-to-cart/{id}', [ProductController::class, 'addToCart'])->name('add.to.cart');
Route::patch('update-cart', [ProductController::class, 'update'])->name('update.cart');
Route::delete('remove-from-cart', [ProductController::class, 'remove'])->name('remove.from.cart');


Route::get('contact-us', [ContactController::class, 'index']);
Route::post('contact-us', [ContactController::class, 'store'])->name('contact.us.store');

Auth::routes();
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
