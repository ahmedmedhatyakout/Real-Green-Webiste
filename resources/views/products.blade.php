@extends('layout')
   
@section('content')
        
    <!-- header -->

    
    <header>
        <a href="/" class="logo"><img src="images/icon2.png"  class="logoV"> Real Green</a>
        <div id="menu-bar" class="fas fa-bars"></div>
        <nav class="navbar" style="text-decoration: none;">        
            <a href="/">Home</a>
            <a href="/shop">Shop</a>
            <a href="/categories">categories</a>
            <a href="/contact-us">Contact Us</a>
            <a href="/aboutUs">About Us</a>
            <a href="/register">Sign Up</a>
            <a href="/login">log In</a>
            <a href="/wishlist">Wish List </a>
            <a href="/search">Search</a>
        </nav>
    </header>


<div class="row">
    @foreach($products as $product)
        <div class="col-xs-18 col-sm-6 col-md-3">
            <div class="thumbnail ">
                <img src="{{ $product->image }}" alt="">
                <div class="caption text-center">
                    <h4>{{ $product->name }}</h4>
                    <p>{{ $product->description }}</p>
                    <p ><strong>Price: </strong> {{ $product->price }}$</p>
                    <p class="btn-holder"><a href="{{ route('add.to.cart', $product->id) }}" class="btn btn-warning btn-block text-center" role="button">Add to cart</a> </p>
                </div>
                
            </div>
        </div>
    @endforeach
</div>
    



@endsection