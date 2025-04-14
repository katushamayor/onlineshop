<?php

namespace App\Http\Requests\Product;

use Illuminate\Foundation\Http\FormRequest;

class StoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
     */
    public function rules(): array
    {
        return [
            'title' => 'required|string',
            'description' => 'required',
            'content' => 'required',
            'preview_image' => 'required',
            'price' => 'required',
            'old_price' => 'nullable',
            'count' => 'required',
            'is_published' => 'nullable',
            'category_id' => 'nullable',
            'tags' => 'nullable|array',
            'product_images' => 'nullable|array',
            'platforms' => 'nullable|array'
        ];
    }

    public function messages()
    {
        return [
            'title.required' => 'Поле названия должно быть заполненым!',
            'description.required' => 'Поле описания должно быть заполненым!',
            'content.required' => 'Поле контента должно быть заполненым!',
            'preview_image.required' => 'Поле картинки должно быть заполненым!',
            'price.required' => 'Поле цены должно быть заполненым!',
            'count.required' => 'Поле количества должно быть заполненым!',
        ];
    }
}
