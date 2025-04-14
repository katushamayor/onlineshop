@extends('layouts.main')

@section('content')
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Редактировать пользователя</h1>
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
            <form action="{{route('user.update', $user->id)}}" method="post">
                @method('patch')
                @csrf
                <div class="form-group">
                    <label>Логин</label>
                    <input type="text" class="form-control" name="login" value="{{ $user->login ?? old('login') }}">
                    <label>Имя</label>
                    <input type="text" class="form-control" name="name" value="{{ $user->name ?? old('name')}}">
                    <label>Почта</label>
                    <input type="text" class="form-control" name="email" value="{{ $user->email ?? old('email') }}">
                    @if($errors->has('email'))
                        <div class="alert alert-danger">{{$errors->first('email')}}</div>
                    @endif
                    <label>Телефон</label>
                    <input type="text" class="form-control" id="phone" name="number" value="{{ $user->number ?? old('number') }}" maxlength="18">
                    <label>Статус</label>
                    <select class="form-control" name="is_admin">
                        <option value="0" selected>Пользователь</option>
                        <option value="1">Администратор</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Редактировать">
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
                    $('#phone').mask('+7(999)999-9999');
                }
            });
        });
    </script>
    <!-- /.content -->
@endsection
