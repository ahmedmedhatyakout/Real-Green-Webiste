@extends('laywish')
   
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
    <div class="dropdown">
                <button type="button" class="btn btn-info" data-toggle="dropdown">
                    <i  aria-hidden="true"></i>Wishlist <span class="badge badge-pill badge-danger">{{ count((array) session('cart')) }}</span>
                </button>
                <div class="dropdown-menu">
                    <div class="row total-header-section">
                        <div class="col-lg-6 col-sm-6 col-6">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i> <span class="badge badge-pill badge-danger">{{ count((array) session('cart')) }}</span>
                        </div>
                        @php $total = 0 @endphp
                        @foreach((array) session('cart') as $id => $details)
                            @php $total += $details['price'] * $details['quantity'] @endphp
                        @endforeach
                        <div class="col-lg-6 col-sm-6 col-6 total-section text-right">
                            <p>Total: <span class="text-info">$ {{ $total }}</span></p>
                        </div>
                    </div>
                    @if(session('cart'))
                        @foreach(session('cart') as $id => $details)
                            <div class="row cart-detail">
                                <div class="col-lg-4 col-sm-4 col-4 cart-detail-img">
                                    <img src="{{ $details['image'] }}" />
                                </div>
                                <div class="col-lg-8 col-sm-8 col-8 cart-detail-product">
                                    <p>{{ $details['name'] }}</p>
                                    <span class="price text-info"> ${{ $details['price'] }}</span> <span class="count"> Quantity:{{ $details['quantity'] }}</span>
                                </div>
                            </div>
                        @endforeach
                    @endif
                    <div class="row">
                        <div class="col-lg-12 col-sm-12 col-12 text-center checkout">
                            <a href="{{ route('cart') }}" class="btn btn-primary btn-block">Go to Cart</a>
                        </div>
                    </div>
                </div>
            </div>
<div class="row">
    @foreach($wishlists as $wishlist)
        <div class="col-xs-18 col-sm-6 col-md-3">
            <div class="thumbnail ">
                <img src="{{ $wishlist->image }}" alt="">
                <div class="caption text-center">
                    <h4>{{ $wishlist->name }}</h4>
                    <p>{{ $wishlist->description }}</p>
                    <p ><strong>Price: </strong> {{ $wishlist->price }}$</p>
                    <p class="btn-holder"><a href="{{ route('add.to.cart', $wishlist->id) }}" class="btn btn-warning btn-block text-center" role="button">Add to wishlist</a> </p>
                </div>
                
            </div>
        </div>
    @endforeach
</div>
    



@endsection