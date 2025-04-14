@extends('layouts.main')

@section('content')
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Редактировать продукт</h1>
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
            <form action="{{route('product.update', $product->id)}}" method="post" enctype="multipart/form-data">
                @method('patch')
                @csrf
                <div class="form-group">
                    <label>Название</label>
                    <input type="text" class="form-control" name="title" value="{{ $product->title ?? old('title') }}">
                </div>
                <div class="form-group">
                    <label>Описание</label>
                    <textarea class="form-control" name="description" cols="10" rows="5">{{ $product->description ?? old('description')}}</textarea>
{{--                    <input type="text" class="form-control" name="description" value="{{ $product->description ?? old('description')}}">--}}
                </div>
                <div class="form-group">
                    <label>Контент</label>
                    <textarea class="form-control" name="content" cols="70" rows="10" id="summernote">{{ $product->content ?? old('content') }}</textarea>
{{--                    <input type="text" class="form-control" name="content" value="{{ $product->content ?? old('content') }}">--}}
                </div>
                <div class="form-group">
                    <label>Основная картинка</label>
                    <div class="input-group">
                        <div class="custom-file">
                            <input name="preview_image" type="file" class="custom-file-input" id="exampleInputFile" value="{{$product->preview_image ?? old('preview_image')}}">
                            <label class="custom-file-label" for="exampleInputFile">Выберите файл</label>
                        </div>
                        <div class="input-group-append">
                            <span class="input-group-text">Загрузка</span>
                        </div>
                    </div>
                    <span>{{$product->preview_image ?? old('preview_image')}}</span>
                </div>
                <div class="form-group">
                    <label>Дополнительные картинки</label>
                    <div class="input-group">
                        <div class="custom-file">
                            <input name="product_images[]" type="file" class="custom-file-input" id="exampleInputFile" multiple>
                            <label class="custom-file-label" for="exampleInputFile">Выберите файл</label>
                        </div>
                        <div class="input-group-append">
                            <span class="input-group-text">Загрузка</span>
                        </div>
                    </div>
                    @foreach($images as $image)
                    <div data-key="{{$image->id}}" class="block-images">
                        <img src="https://109.191.89.254:4433/storage/{{$image->file_path}}" width="250" height="100">
                        <span>{{$image->file_path}}</span>
                        <i class="delete-image">X</i>
                    </div>
                    @endforeach
                </div>
                <div class="form-group">
                    <label>Старая цена</label>
                    <input type="text" class="form-control" name="old_price" value="{{ $product->old_price ?? old('old_price') }}">
                </div>
                <div class="form-group">
                    <label>Цена</label>
                    <input type="text" class="form-control" name="price" value="{{ $product->price ?? old('price') }}">
                </div>
                <div class="form-group">
                    <label>Количество</label>
                    <input type="text" class="form-control" name="count" value="{{ $product->count ?? old('count') }}">
                </div>
                <div class="form-group">
                    <label>В наличии(1 - да, 0 - нет)</label>
                    <input type="text" class="form-control" name="is_published" value="{{ $product->is_published ?? old('is_published') }}">
                </div>
                <div class="form-group">
                    <label>Категория</label>
                    <select name="category_id" class="tags" data-placeholder="Выберите категорию" style="width: 100%;">
                        @foreach($categories as $category)
                            <option value="{{$category->id}}" {{$category->id == $product->category_id ? 'selected' : ''}}>
                                {{$category->title}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>Теги</label>
                    <select name="tags[]" class="tags" multiple="multiple" style="width: 100%;">
                        @foreach($product->tags as $tag)
                            <option value="{{$tag->id}}" selected>
                                {{$tag->title}}
                            </option>
                        @endforeach
                            @foreach($tags as $tag)
                                <option value="{{$tag->id}}">
                                    {{$tag->title}}
                                </option>
                            @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>Платформы</label>
                    <select name="platforms[]" class="platforms tags" multiple="multiple" style="width: 100%;">
                        @foreach($product->platforms as $plat)
                            <option value="{{$plat->id}}" selected>
                                {{$plat->title}}
                            </option>
                        @endforeach
                            @foreach($platforms as $platform)
                                <option value="{{$platform->id}}">
                                    {{$platform->title}}
                                </option>
                            @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Редактировать">
                </div>
            </form>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
@endsection
