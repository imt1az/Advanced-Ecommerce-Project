@extends('admin.admin_master')


@section('admin')

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


    <div class="container-full">
        <!-- Content Header (Page header) -->


        <!-- Main content -->
        <section class="content">

            <!-- Basic Forms -->
            <div class="box">
                <div class="box-header with-border">
                    <h4 class="box-title" style="font-weight: bolder;font-style:italic">Product Detailes</h4>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col">
                            <form method="post" action="{{route('product-update')}}" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="id" value="{{$products->id}}">
                                <div class="row">

                                    <div class="col-12">

                                        {{------1st Row Start----------}}
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <h5>Brand Select <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <select name="brand_id" class="form-control" required="">
                                                            <option value="" selected="" disabled="">Select Category
                                                            </option>
                                                            @foreach($brands as $brand)
                                                                <option
                                                                    value="{{ $brand->id }}" {{$brand->id == $products->brand_id ? 'selected' :''}}>{{ $brand->brand_name_en }}</option>
                                                            @endforeach
                                                        </select>
                                                        @error('brand_id')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <h5>Category Select <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <select name="category_id" class="form-control" required="">
                                                            <option value="" selected="" disabled="">Select Category
                                                            </option>
                                                            @foreach($categories as $category)
                                                                <option
                                                                    value="{{ $category->id }}" {{$category->id == $products->category_id ? 'selected' :''}}>{{ $category->category_name_en }}</option>
                                                            @endforeach
                                                        </select>
                                                        @error('category_id')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <h5>Sub-category Select <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <select name="subcategory_id" class="form-control" required="">
                                                            <option value="" selected="" disabled="">Select
                                                                SubCategory
                                                            </option>
                                                            @foreach($subcategorie as $sub)
                                                                <option
                                                                    value="{{ $sub->id }}" {{$sub->id == $products->subcategory_id ? 'selected' :''}}>{{ $sub->subcategory_name_en}}</option>
                                                            @endforeach

                                                        </select>
                                                        @error('subcategory_id')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>

                                        </div>

                                        {{------1st Row End----------}}


                                        {{------2nd Row Start----------}}

                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <h5>Sub-SubCategory Select <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <select name="subsubcategory_id" class="form-control"
                                                                required="">
                                                            <option value="" selected="" disabled="">Select
                                                                Sub-SubCategory
                                                            </option>
                                                            @foreach($subsubcategorie as $subsub)
                                                                <option
                                                                    value="{{ $subsub->id }}" {{$subsub->id == $products->subsubcategory_id ? 'selected' :''}}>{{ $subsub->subsubcategory_name_en}}</option>
                                                            @endforeach

                                                        </select>
                                                        @error('subsubcategory_id')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <h5>Product Name English <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_name_en" class="form-control"
                                                               required="" value="{{$products->product_name_en}}">

                                                        @error('product_name_en')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <h5>Product Name Bangla <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_name_hin" class="form-control"
                                                               value="{{$products->product_name_hin}}"
                                                               required="">

                                                        @error('product_name_hin')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        {{------2nd Row End----------}}


                                        {{------3rd Row Start----------}}

                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <h5>Product Code <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_code" class="form-control"
                                                               value="{{$products->product_code}}"
                                                               required="">

                                                        @error('product_code')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <h5>Product Quantity<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_qty" class="form-control"
                                                               value="{{$products->product_qty}}"
                                                               required="">

                                                        @error('product_qty')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <h5>Product Tag English <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_tags_en" required=""
                                                               class="form-control"
                                                               value="{{$products->product_tags_en}}"
                                                               data-role="tagsinput" placeholder="add tags">

                                                        @error('product_tags_en')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        {{------3rd Row End----------}}



                                        {{------4th Row Start----------}}

                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <h5>Product Tag Bangla <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_tags_hin" required=""
                                                               class="form-control"
                                                               value="{{$products->product_tags_hin}}"
                                                               data-role="tagsinput" placeholder="add tags">

                                                        @error('product_tags_hin')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <h5>Product Size English <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_size_en" required=""
                                                               class="form-control"
                                                               value="{{$products->product_size_en}}"
                                                               data-role="tagsinput" placeholder="add tags">

                                                        @error('product_size_en')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <h5>Product Size Bangla <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_size_hin" required=""
                                                               class="form-control"
                                                               value="{{$products->product_size_hin}}"
                                                               data-role="tagsinput" placeholder="add tags">

                                                        @error('product_size_hin')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        {{------4th Row End----------}}


                                        {{------5th Row Start----------}}

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <h5>Product Color English <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_color_en" required=""
                                                               class="form-control"
                                                               value="{{$products->product_color_en}}"
                                                               data-role="tagsinput" placeholder="add tags">

                                                        @error('product_color_en')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <h5>Product Color Bangla <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_color_hin" required=""
                                                               class="form-control"
                                                               value="{{$products->product_color_hin}}"
                                                               data-role="tagsinput" placeholder="add tags">

                                                        @error('product_color_hin')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        {{------5th Row End----------}}


                                        {{------6th Row Start----------}}
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <h5>Product Selling Price <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="selling_price" class="form-control"
                                                               value="{{$products->selling_price}}"
                                                               required="">

                                                        @error('selling_price')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <h5>Product Discount <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="discount_price" class="form-control"
                                                               value="{{$products->discount_price}}"
                                                               required="">
                                                        @error('discount_price')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        {{------6th Row End----------}}


                                        {{------7th Row Start----------}}
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <h5>Short Description English <span class="text-danger">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                         <textarea name="short_descp_en" class="form-control"
                                                                   required=""
                                                                   placeholder="Textarea text">{!! $products->short_descp_en !!}</textarea>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <h5>Short Description Bangla<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <textarea name="short_descp_hin" id="textarea"
                                                                  class="form-control" required=""
                                                                  placeholder="Textarea text">{!! $products->short_descp_hin !!}</textarea>

                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                        {{------7th Row End----------}}


                                        {{------8th Row Start----------}}
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <h5>Long Description English <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <textarea id="editor1" required="" name="long_descp_en"
                                                                  rows="10" cols="80">
												{!! $products->long_descp_en !!}</textarea>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <h5>Long Description Bangla<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <textarea id="editor2" required="" name="long_descp_hin"
                                                                  rows="10" cols="80">
												{!! $products->long_descp_hin !!}</textarea>

                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                        {{------8th Row End----------}}


                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="controls">
                                                <fieldset>
                                                    <input type="checkbox" id="checkbox_2" name="hot_deals"
                                                           value="1" {{$products->hot_deals == 1 ? 'checked' : ''}}>
                                                    <label for="checkbox_2">Hot Deals</label>
                                                </fieldset>
                                                <fieldset>
                                                    <input type="checkbox" id="checkbox_3" name="featured"
                                                           value="1" {{$products->featured == 1 ? 'checked' : ''}}>
                                                    <label for="checkbox_3">Featured</label>
                                                </fieldset>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="controls">
                                                <fieldset>
                                                    <input type="checkbox" id="checkbox_4" name="special_offer"
                                                           value="1" {{$products->special_offer == 1 ? 'checked' : ''}}>
                                                    <label for="checkbox_4">Special Offer</label>
                                                </fieldset>
                                                <fieldset>
                                                    <input type="checkbox" id="checkbox_5" name="special_deals"
                                                           value="1" {{$products->special_deals == 1 ? 'checked' : ''}}>
                                                    <label for="checkbox_5">Special Deals</label>
                                                </fieldset>
                                            </div>
                                        </div>
                                    </div>
                                </div>


{{--                                <div class="text-xs-right">--}}
{{--                                    <input type="submit" class="btn btn-warning mb-5" value="Update Product">--}}
{{--                                </div>--}}
                            </form>

                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

        </section>
        <!-- /.content -->


        {{--Multi Image Portion Started--}}

        <section class="content">
            <div class="row">
                <div class="col-md-12">

                    <div class="box box-outline-info" >
                        <div class="box-header" style="border-radius: 5px">
                            <h4 class="box-title"><strong>Multi Image Update</strong></h4>
                        </div>
                        <form method="post" action="{{route('update-product-image')}}" enctype="multipart/form-data">
                            @csrf
                            <div class="row row-sm">
                                @foreach($multiImgs as $img)
                                    <div class="col-md-3">
                                        <div class="card" >
                                            <img src="{{asset($img->photo_name)}}" class="card-img-top"
                                                 style="height: 280px; width: 280px; margin-left: 10px; margin: auto">
                                            <div class="card-body">
                                                <h5 class="card-title">
                                                    <a href="{{route('product.multiImg.delete',$img->id)}}" class="btn btn-sm btn-danger" id="delete"
                                                       title="Delete Data"><i class="fa fa-trash"></i></a>
                                                </h5>
                                                <p class="card-text">
                                                <div class="form-group">
                                                    <label class="form-control-label">Change Image <span
                                                            class="text-danger">*</span></label>
                                                    <input class="form-control" type="file" name="multi_img[{{$img->id}}]">
                                                </div>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
{{--                            <div class="text-xs-right">--}}
{{--                                <input type="submit" class="btn btn-rounded btn-primary mb-5" value="Update Image" style="margin-left: 16px;">--}}
{{--                            </div>--}}
                            <br><br>
                        </form>
                    </div>
                </div>
            </div>
        </section>


        {{--Multi Image Portion Ended--}}


        {{--Thambnail Image Portion Started--}}

        <section class="content">
            <div class="row">
                <div class="col-md-12">

                    <div class="box box-outline-info" >
                        <div class="box-header" style="border-radius: 5px">
                            <h4 class="box-title"><strong>Update Thumbnail Image </strong></h4>
                        </div>
                        <form method="post" action="{{route('update-product-thumbnail')}}" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" name="id" value="{{$products->id}}">
                            <input type="hidden" name="old_img" value="{{$products->product_thumbnail	}}">
                            <div class="row row-sm">

                                <div class="col-md-3">
                                    <div class="card" >
                                        <img src="{{asset($products->product_thumbnail)}}" class="card-img-top"
                                             style="height: 280px; width: 280px; margin-left: 10px; margin: auto">
                                        <div class="card-body">
                                            <p class="card-text">
                                            <div class="form-group">
                                                <label class="form-control-label">Change Image <span
                                                        class="text-danger">*</span></label>
                                                <input type="file" name="product_thumbnail"
                                                       class="form-control" onchange="mainThamUrl(this)">
                                                <img src="" id="mainThmb">

                                            </div>
                                            </p>
                                        </div>
                                    </div>
                                </div>

                            </div>
{{--                            <div class="text-xs-right">--}}
{{--                                <input type="submit" class="btn btn-rounded btn-primary mb-5" value="Update Image" style="margin-left: 16px;">--}}
{{--                            </div>--}}
                            <br><br>
                        </form>
                    </div>
                </div>
            </div>
        </section>


        {{--Thambnail Image Portion Ended--}}


    </div>


    <script type="text/javascript">
        $(document).ready(function () {
            $('select[name="category_id"]').on('change', function () {
                var category_id = $(this).val();
                if (category_id) {
                    $.ajax({
                        url: "{{  url('/category/subcategory/ajax') }}/" + category_id,
                        type: "GET",
                        dataType: "json",
                        success: function (data) {
                            $('select[name="subsubcategory_id"]').html('');
                            var d = $('select[name="subcategory_id"]').empty();
                            $.each(data, function (key, value) {
                                $('select[name="subcategory_id"]').append('<option value="' + value.id + '">' + value.subcategory_name_en + '</option>');
                            });
                        },
                    });
                } else {
                    alert('danger');
                }
            });


            $('select[name="subcategory_id"]').on('change', function () {
                var subcategory_id = $(this).val();
                if (subcategory_id) {
                    $.ajax({
                        url: "{{  url('/category/sub-subcategory/ajax') }}/" + subcategory_id,
                        type: "GET",
                        dataType: "json",
                        success: function (data) {
                            var d = $('select[name="subsubcategory_id"]').empty();
                            $.each(data, function (key, value) {
                                $('select[name="subsubcategory_id"]').append('<option value="' + value.id + '">' + value.subsubcategory_name_en + '</option>');
                            });
                        },
                    });
                } else {
                    alert('danger');
                }
            });

        });
    </script>

    <script type="text/javascript">

        function mainThamUrl(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#mainThmb').attr('src', e.target.result).width(80).height(80);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>

    {{--  Multiple Image  --}}

    <script type="text/javascript">

        $(document).ready(function () {
            $('#multiImg').on('change', function () { //on file input change
                if (window.File && window.FileReader && window.FileList && window.Blob) //check File API supported browser
                {
                    var data = $(this)[0].files; //this file data

                    $.each(data, function (index, file) { //loop though each file
                        if (/(\.|\/)(gif|jpe?g|png)$/i.test(file.type)) { //check supported file type
                            var fRead = new FileReader(); //new filereader
                            fRead.onload = (function (file) { //trigger function on successful read
                                return function (e) {
                                    var img = $('<img/>').addClass('thumb').attr('src', e.target.result).width(80)
                                        .height(80); //create image element
                                    $('#preview_img').append(img); //append image to output element
                                };
                            })(file);
                            fRead.readAsDataURL(file); //URL representing the file's data.
                        }
                    });

                } else {
                    alert("Your browser doesn't support File API!"); //if File API is absent
                }
            });
        });

    </script>


@endsection
