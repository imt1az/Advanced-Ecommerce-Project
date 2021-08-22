@extends('frontend.main_master')

@section('title')
    Cash On Delivery
@endsection

@section('content')








    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <ul class="list-inline list-unstyled">
                    <li><a href="home.html">Home</a></li>
                    <li class='active'>Cash On Delivery</li>
                </ul>
            </div><!-- /.breadcrumb-inner -->
        </div><!-- /.container -->
    </div><!-- /.breadcrumb -->

    <div class="body-content">
        <div class="container">
            <div class="checkout-box ">
                <div class="row">

                    <div class="col-md-6">
                        <!-- checkout-progress-sidebar -->
                        <div class="checkout-progress-sidebar ">
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="unicase-checkout-title">Your Shopping Amount</h4>
                                    </div>
                                    <div class="">
                                        <ul class="nav nav-checkout-progress list-unstyled">

                                            <li>
                                                @if(Session::has('coupon'))
                                                    <strong style="color: #0b816a">SubTotal : </strong> ${{$cartTotal}}
                                                    <hr>
                                                    <strong style="color: #0b816a">Coupon Name
                                                        : </strong> {{session()->get('coupon')['coupon_name']}}
                                                    ({{session()->get('coupon')['coupon_discount']}}%)
                                                    <hr>
                                                    <strong style="color: #0b816a">Coupon Discount : </strong>
                                                    ${{session()->get('coupon')['discount_amount']}}
                                                    <hr>
                                                    <strong style="color: #0b816a">Grand Total : </strong>
                                                    ${{session()->get('coupon')['total_amount']}}
                                                    <hr>

                                                @else
                                                    <strong style="color: #0b816a">SubTotal : </strong> ${{$cartTotal}}
                                                    <hr>
                                                    <strong style="color: #0b816a">Grand Total : </strong>
                                                    ${{$cartTotal}}
                                                    <hr>
                                                @endif
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- checkout-progress-sidebar -->
                    </div>


                    <div class="col-md-6">

                        <div class="checkout-progress-sidebar ">
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="unicase-checkout-title">Select Payment Method</h4>
                                    </div>
                                    <form action="{{route('cash.order')}}" method="post" id="payment-form">
                                        @csrf
                                        <div class="form-row">
                                            <img src="{{asset('frontend/assets/images/payments/cash.png')}}">
                                            <label for="card-element">

                                                <input type="hidden" name="name" value="{{ $data['shipping_name'] }}">
                                                <input type="hidden" name="email" value="{{ $data['shipping_email'] }}">
                                                <input type="hidden" name="phone" value="{{ $data['shipping_phone'] }}">
                                                <input type="hidden" name="post_code" value="{{ $data['post_code'] }}">
                                                <input type="hidden" name="division_id"
                                                       value="{{ $data['division_id'] }}">
                                                <input type="hidden" name="district_id"
                                                       value="{{ $data['district_id'] }}">
                                                <input type="hidden" name="state_id" value="{{ $data['state_id'] }}">
                                                <input type="hidden" name="notes" value="{{ $data['notes'] }}">


                                            </label>

                                            <!-- Used to display form errors. -->
                                            <div id="card-errors" role="alert"></div>
                                        </div>
                                        <br>
                                        <button class="btn btn-primary">Submit Payment</button>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>


                    </form>

                </div><!-- /.row -->
            </div><!-- /.checkout-box -->
            <!-- ============================================== BRANDS CAROUSEL ============================================== -->
        @include('frontend.body.brands')<!-- /.logo-slider -->
            <!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
        </div><!-- /.container -->
    </div><!-- /.body-content -->







@endsection

