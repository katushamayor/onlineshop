@extends('layouts.main')

@section('content')
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Отзывы</h1>
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
                                    <th scope="col">Звёзд из 5</th>
                                    <th scope="col">Имя</th>
                                    <th scope="col">Почта</th>
                                    <th scope="col">Заголовок</th>
                                    <th scope="col">Продукт</th>
                                </thead>
                                <tbody>
                                @foreach($reviews as $rev)
                                   <tr>
                                       <td>{{$rev->score}}</td>
                                       <td><a href="{{route('review.show', $rev->id)}}">{{$rev->name}}</a></td>
                                       <td>{{$rev->email}}</td>
                                       <td>{{$rev->title}}</td>
                                       <td>{{$rev->product->title}}</td>
                                       <td title="Удалить">
                                           <form action="{{route('review.delete', $rev->id)}}" method="post">
                                               @csrf
                                               @method('delete')
                                               <button type="submit"><i class="fas fa-minus-circle" style="color: #ff0000;"></i></button>
                                           </form>
                                       </td>
                                       <td><button><a href="{{route('review.show', $rev->id)}}"><i class="fas fa-pen-square"></i></a></button></td>
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
