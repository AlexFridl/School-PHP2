<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class KorisnikRequest extends FormRequest
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
            'ime' => 'required|regex:/^[A-Z][a-z]{2,}(\s[\w\d]+)*$/',
            'prezime' => 'required|regex:/^[A-Z][a-z]+(\s[\w\d]+)*$/',
            'korisnicko_ime' => 'required',
            'loznika' => 'required|regex:/^[\S]{4,10}$/'
        ];
    }
    public function messages()
    {
        return [
            'ime.required' => 'Ime je obavezno!',
            'ime.regex' => 'Ime nije dobrog formata, mora sadrzati najmanje tri slova!',
            'prezime.required' => 'Prezime je obavezno!',
            'prezime.regex' => 'Prezime nije dobrog formata!',
            'korisnicko_ime.required' => 'Korisnicko ime je obavezno!',
            'loznika.required' => 'Lozinka je obavezna!',
            'lozinka.regex' => 'Lozinka mora imati od cetiri do deset karaktera!'
        ];
    }
}
