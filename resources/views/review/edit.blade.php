@extends('layouts.main')

@section('content')
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Отзыв</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item active">Главная</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <!-- Small boxes (Stat box) -->
            <div class="row flex-column">
                <div class="w-25">
                    <form action="{{route('review.delete', $review->id)}}" method="post">
                        @csrf
                        @method('delete')
                        <button class="  btn btn-danger" type="submit"><b >Удалить</b></button>
                    </form>
                </div>
                <form action="{{route('review.edit', $review->id)}}" method="post">
                    @csrf
                    @method('patch')

                    <div class="form-group">
                        <label scope="col">Звёзд из 5</label>
                        <input class="form-control col-3" name="score" type="text" value="{{$review->score}}">
                    </div>
                    <div class="form-group">
                        <label scope="col">Имя</label>
                        <input class="form-control col-3" name="name" type="text" value="{{$review->name}}">
                    </div>
                    <div class="form-group">
                        <label scope="col">Почта</label>
                        <input class="form-control col-3" name="email" type="text" value="{{$review->email}}">
                    </div>
                    <div class="form-group">
                        <label scope="col">Заголовок</label>
                        <input class="form-control col-3" name="title" type="text" value="{{$review->title}}">
                    </div>
                    <div class="form-group">
                        <label scope="col">Продукт</label>
                        <input class="form-control col-3" type="text" value="{{$review->product->title}}">
                    </div>
                    <div class="form-group">
                        <label scope="col">Описание</label>
                        <textarea class="form-control col-5" name="description" type="text">{{$review->product->description}}</textarea>
                    </div>
                    <button class="btn btn-primary" type="submit"><b>Редактировать</b></button>
                </form>


            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
@endsection
