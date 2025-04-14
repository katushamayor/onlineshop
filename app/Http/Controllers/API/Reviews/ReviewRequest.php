<?php

namespace App\Http\Controllers\API\Reviews;

use Illuminate\Foundation\Http\FormRequest;

class ReviewRequest extends FormRequest
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
            'product_id' => 'required|integer',
            'score' => 'required|integer',
            'name' => 'required|string',
            'email' => 'required|string',
            'title' => 'required|string',
            'description' => 'required|string'
        ];
    }

    public function messages()
    {
        return [
            'score.required' =>  'Количество звёзд должно быть заполнено!',
            'name.required' => 'Поле имени должно быть заполнено!',
            'email.required' => 'Поле почты должно быть заполнено!',
            'title.required' => 'Поле общих впечатлений должно быть заполнено!',
            'description.required' => 'Поле описания должно быть заполнено!'
        ];
    }
}
