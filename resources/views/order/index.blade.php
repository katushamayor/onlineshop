@extends('layouts.main')

@section('content')
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Заказы</h1>
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
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Наименование</th>
                                </thead>
                                <tbody>
                                @foreach($orders as $key => $order)
                                    <tr>
                                        <td>Заказ №{{ $order['id'] }}</td>
                                        <td>{{$order['total_price']}}.руб</td>
                                        <td>
                                            <table class="border border-secondary rounded-end">
                                                <thead>
                                                    <th scope="col">Название</th>
                                                    <th scope="col">Изображение</th>
                                                    <th scope="col">Количество</th>
                                                    <th scope="col">Цена</th>
                                                </thead>
                                                <tbody>
                                                @foreach(json_decode($order['products'], true) as $product)
                                                <tr>
                                                    <td>{{$product['title']}}</td>
                                                    <td><img src="https://109.191.89.254:4433/{{strstr( $product['image_url'], 'storage')}}" alt="{{$product['title']}}" width="200" height="100"></td>
                                                    <td>{{$product['qty']}}</td>
                                                    <td>{{$product['price']}}.руб</td>
                                                </tr>
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        </td>
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
