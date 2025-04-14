@extends('layouts.main')

@section('content')
    <!-- Content Header (Page header) -->

    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Продукты</h1>
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
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <a href="{{ route('product.create') }}" class="btn btn-primary">Добавить</a>
                        </div>

                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-wrap">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Название</th>
                                    <th style="width: 22%">Платформа</th>
                                    <th>Изображение</th>
                                    <th>Старая цена</th>
                                    <th>Цена</th>
                                    <th>Количество</th>
                                    <th>В наличии</th>
                                </thead>
                                <tbody>
                                @foreach($products as $product)
                                    <tr>
                                        <td>{{ $product->id }}</td>
                                        <td class="text-nowrap"><a href="{{route('product.show', $product->id)}}">{{$product->title}}</a></td>
                                        <td class="limit-content" style="display: -webkit-box;-webkit-line-clamp: 3;-webkit-box-orient: vertical;overflow: hidden;">{{$product->description}}</td>
                                        <td><img src="{{asset('storage/' . $product->preview_image)}}" width="100px" height="60px">{{$product->preview_image}}</td>
                                        <td>{{$product->old_price}} .руб</td>
                                        <td>{{$product->price}} .руб</td>
                                        <td>{{$product->count}} .шт</td>
                                        <td class="text-info">{{$product->is_published == 1 ? 'в наличии' : "нет в наличии"}}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>

                    </div>

                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
@endsection
