@extends('layouts.main')

@section('content')
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Добавить пользователя</h1>
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
                <form action="{{route('user.store')}}" method="post">
                    @csrf
                    <div class="form-group">
                        <input type="text" class="form-control" value="{{old('login')}}" name="login" placeholder="Логин">
                        @if($errors->has('login'))
                            <div class="alert alert-danger">{{$errors->first('login')}}</div>
                        @endif
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" value="{{old('email')}}" name="email" placeholder="Почта">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="password" placeholder="Пароль">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="password_confirmation" placeholder="Подтвердите пароль">
                        @if($errors->has('password'))
                            <div class="alert alert-danger">{{$errors->first('password')}}</div>
                        @endif
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" value="{{old('name')}}" name="name" placeholder="Имя">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" value="{{old('number')}}" id="phone" name="number" placeholder="Телефон" maxlength="18">
                    </div>
                    <div class="form-group">
                        <select class="form-control" name="is_admin">
                            <option value="1" checked>Пользователь</option>
                            <option value="2">Администратор</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Добавить">
                    </div>
                </form>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            jQuery.noConflict();
            jQuery(document).ready(function($) {
                const phoneInput = document.querySelector('#phone');
                if (phoneInput) {
                    $('#phone').mask('+7(999)999-99-99');
                }
            });
        });

    </script>
    <!-- /.content -->
@endsection
