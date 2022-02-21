<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RoleRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'uloga' => 'required|regex:/^[A-Z][a-z]{4,}$/'
        ];
    }
    public function messages()
    {
        return [
            "uloga.required" => "Polje za naziv uloge je obavezno!",
            "uloga.regex" => "Naziv uloge nije dobrog formata, mora sadrzati najmanje cetiri slova!"
        ];
    }
}
