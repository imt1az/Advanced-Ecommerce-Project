@extends('admin.admin_master')


@section('admin')



    <div class="container-full">
        <!-- Content Header (Page header) -->
        <!-- Main content -->
        <section class="content">
            <div class="row">



                <!-- /.col -->


                {{------------------Update SliderList_______________--}}
                <div class="col-12">

                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Update Slider</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="table-responsive">

                                <form method="post" action="{{route('slider.update')}}" enctype="multipart/form-data">
                                    @csrf
                                    <input type="hidden" name="id" value="{{$sliders->id}}">
                                    <input type="hidden" name="old_image" value="{{$sliders->slider_img}}">

                                    <div class="form-group">
                                        <h5>Slider Title<span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="title" value="{{$sliders->title}}"
                                                   class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <h5>Slider Description<span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="description" value="{{$sliders->description}}"
                                                   class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <h5>Brand Image<span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="file" name="slider_img" class="form-control">
                                            @error('brand_image')
                                            <span class="text-danger">{{$message}}</span>
                                            @enderror
                                        </div>
                                    </div>


                                    {{--end col md 6--}}


                                    <div class="text-xs-right">
                                        <input type="submit" class="btn btn-warning mb-5" value="Update">
                                    </div>
                                </form>

                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->


                    <!-- /.box -->
                </div>


            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->

    </div>



@endsection
