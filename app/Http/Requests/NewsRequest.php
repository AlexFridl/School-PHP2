<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class NewsRequest extends FormRequest
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
            'naslov' => 'required',
            'podnaslov' => 'required',
            'tekst' => 'required',
            'slika' => 'mimes:jpeg,jpg,bmp,png,JPEG,JPG,BMP,PNG',
            'ddlKategorija' => 'required|not_in:0',
        ];
    }
    public function messages()
    {
        return[
            'required.naslov' => 'Unesite naslov!',
            'required.podnaslov.' => 'Unesite podnaslov!',
            'required.tekst.' => 'Unesite tekst!',
            'required.slika.' => 'Unesite sliku!',
            'ddlKategorija.required' => 'Odaberite kategoriju!',
            'ddlKategorija.not_in' => 'Morate odabrati kategoriju!'

        ];

    }
}
