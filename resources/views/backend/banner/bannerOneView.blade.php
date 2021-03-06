@extends('admin.admin_master')


@section('admin')
    <div class="container-full">
        <!-- Content Header (Page header) -->
        <!-- Main content -->
        <section class="content">
            <div class="row">


                <div class="col-8">

                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Slider List</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="table-responsive">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>Banner One Image </th>
                                        <th>Title</th>
                                        <th>Description</th>
                                        <th>Status</th>
                                        <th>Action</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($banner_one as $item)
                                        <tr>
                                            <td><img src="{{ asset($item->bannerOne_img) }}" style="width: 100px; height: 70px;"> </td>
                                            <td>
                                                @if($item->title==NULL)
                                                    <span class="badge badge-pill badge-danger">No Title</span>
                                                @else
                                                    {{$item->title}}
                                                @endif

                                            </td>
                                            <td>
                                                @if($item->description==NULL)
                                                    <span class="badge badge-pill badge-danger">No Description</span>
                                                @else
                                                    {{$item->description}}
                                                @endif
                                            </td>
                                            <td>
                                                @if($item->status==1)
                                                    <span class="badge badge-pill badge-success">Active</span>
                                                @else
                                                    <span class="badge badge-pill badge-danger">Inactive</span>
                                                @endif
                                            </td>

                                            <td width="30%">
                                                <a href="{{ route('bannerOne.edit',$item->id) }}" class="btn btn-info" title="Edit Data"><i class="fa fa-pencil"></i></a>
                                                <a href="{{ route('bannerOne.delete',$item->id) }}" class="btn btn-danger" title="Delete Data" id="delete"><i class="fa fa-trash"></i></a>
                                                @if($item->status==1)
                                                    <a href="{{route('bannerOne.inactive',$item->id)}}" class="btn btn-danger"><i class="fa fa-arrow-down" title="Inactive"></i></a>
                                                @else
                                                    <a href="{{route('bannerOne.active',$item->id)}}" class="btn btn-success"><i class="fa fa-arrow-up" title="Active"></i></a>
                                                @endif
                                            </td>

                                        </tr>
                                    @endforeach
                                    </tbody>

                                </table>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->


                </div>
                <!-- /.col -->



                {{------------------Add Slider _______________--}}
                <div class="col-4">

                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add Slider </h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="table-responsive">


                                <form method="post" action="{{ route('banner_One.store') }}" enctype="multipart/form-data">
                                    @csrf


                                    <div class="form-group">
                                        <h5>Banner_One Title <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text"  name="title" class="form-control" >

                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <h5>Banner_One Description<span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="description" class="form-control" >

                                        </div>
                                    </div>



                                    <div class="form-group">
                                        <h5>Banner_One Image <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="file" name="bannerOne_img" class="form-control" >
                                            @error('bannerOne_img')
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>


                                    <div class="text-xs-right">
                                        <input type="submit" class="btn btn-rounded btn-primary mb-5" value="Add New">
                                    </div>
                                </form>





                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>



            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->

    </div>



@endsection
