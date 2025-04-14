<?php

namespace App\Http\Requests\User;

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
     */public function rules(): array
{
    return [
        'login' => 'required|string|unique:users',
        'name' => 'nullable|string',
        'password' => 'required|string|required_with:password_confirmation|same:password_confirmation',
        'password_confirmation' => 'required|string',
        'email' => 'required|string|unique:users,email',
        'number' => 'nullable|string',
        'is_admin' => 'nullable|boolean'
    ];
}

    public function messages()
    {
        return [
            'login.required' => 'Это поле обязательно!',
            'login.unique' => 'Пользователь с таким логином уже существует!',
            'password.required' => 'Подтверждение пароля является обязательным полем!',
            'password.confirmed' => 'Пароли не совпадают!',
            'email.unique' => 'Пользователь с такой почтой уже существует!'
        ];
    }

}
