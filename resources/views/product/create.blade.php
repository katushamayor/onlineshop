@extends('layouts.main')

@section('content')
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Добавить продукт</h1>
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
                <form action="{{route('product.store')}}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label>Название продукта</label>
                        <input type="text" class="form-control" name="title" placeholder="Название">
                        @if($errors->has('title'))
                            <div class="alert alert-danger">{{$errors->first('title')}}</div>
                        @endif
                    </div>
                    <div class="form-group">
                        <label>Описание(вступление небольшое)</label>
                        <input type="text" class="form-control" name="description" placeholder="Описание">
                        @if($errors->has('description'))
                            <div class="alert alert-danger">{{$errors->first('description')}}</div>
                        @endif
                    </div>
                    <div class="form-group">
                        <label>Сюжет игры</label>
                        <textarea class="form-control" name="content" cols="30" rows="10" placeholder="Контент" id="summernote"></textarea>
                        @if($errors->has('content'))
                            <div class="alert alert-danger">{{$errors->first('content')}}</div>
                        @endif
                    </div>
                    <div class="form-group">
                        <label>Старая цена(если есть)</label>
                        <input type="text" class="form-control" name="old_price" placeholder="Старая цена">
                    </div>
                    <div class="form-group">
                        <label>Цена</label>
                        <input type="text" class="form-control" name="price" placeholder="Цена">
                        @if($errors->has('price'))
                            <div class="alert alert-danger">{{$errors->first('price')}}</div>
                        @endif
                    </div>
                    <div class="form-group">
                        <label>Количество</label>
                        <input type="text" class="form-control" name="count" placeholder="Количество">
                        @if($errors->has('count'))
                            <div class="alert alert-danger">{{$errors->first('count')}}</div>
                        @endif
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="custom-file">
                                <input name="preview_image" type="file" class="custom-file-input" id="exampleInputFile">
                                <label class="custom-file-label" for="exampleInputFile">Выберите файл</label>
                            </div>
                            <div class="input-group-append">
                                <span class="input-group-text">Загрузка</span>
                            </div>
                        </div>
                        @if($errors->has('preview_image'))
                            <div class="alert alert-danger">{{$errors->first('preview_image')}}</div>
                        @endif
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="custom-file">
                                <input name="product_images[]" type="file" class="custom-file-input" id="exampleInputFile">
                                <label class="custom-file-label" for="exampleInputFile">Выберите файл</label>
                            </div>
                            <div class="input-group-append">
                                <span class="input-group-text">Загрузка</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="custom-file">
                                <input name="product_images[]" type="file" class="custom-file-input" id="exampleInputFile">
                                <label class="custom-file-label" for="exampleInputFile">Выберите файл</label>
                            </div>
                            <div class="input-group-append">
                                <span class="input-group-text">Загрузка</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Disabled Result</label>
                        <select name="category_id" class="form-control select2" style="width: 100%;">
                            <option selected="selected" disabled>Выберите категорию</option>
                            @foreach($categories as $category)
                            <option value="{{$category->id}}">{{$category->title}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <select name="tags[]" class="tags" multiple="multiple" data-placeholder="Выберите тег" style="width: 100%;">
                            @foreach($tags as $tag)
                            <option value="{{$tag->id}}">{{$tag->title}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <select name="platforms[]" class="tags" multiple="multiple" data-placeholder="Выберите плтаформу" style="width: 100%;">
                            @foreach($platforms as $platform)
                            <option value="{{$platform->id}}">{{$platform->title}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Добавить">
                    </div>
                </form>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
@endsection
