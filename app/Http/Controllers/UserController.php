<?php

namespace App\Http\Controllers;

use App\Models\Activity;
use App\Models\Korisnik;
use App\Models\Uloga;
use Illuminate\Http\Request;
use App\Http\Requests\UserRequest;
class UserController extends Controller
{
    public function adminUsers() {
        $korisnik = new Korisnik();

        try {
            $this->data['korisnik'] = $korisnik->getAll();
        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
        return view('pages.adminUsers', $this->data);
    }

    public function adminUsers_insert() {
        $uloga = new Uloga();
        try {
            $this->data['uloga'] = $uloga->getRoles();
        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
        return view('pages.adminUsers_insert', $this->data);
    }

    public function doAdminUsers_insert(UserRequest $request) {
        if ($request->has('btnAddUser')) {

//            $rules = [
//                'ime' => 'required|regex:/^[A-Z][a-z]{2,}(\s[\w\d]+)*$/',
//                'prezime' => 'required|regex:/^[A-Z][a-z]+(\s[\w\d]+)*$/',
//                'korisnicko_ime' => 'required|unique:users,user_name',
//                'loznika' => 'required|regex:/^[\S]{4,10}$/'
//            ];
//            $custom_messages = [
//                'required' => 'Polje :attribute je obavezno!',
//                'ime.regex' => 'Ime nije dobrog formata, mora sadrzati najmanje tri slova!',
//                'prezime.regex' => 'Prezime nije dobrog formata!',
//                'korisnicko_ime.unique' => 'To korisnicko ime vec postoji u bazi!',
//                'lozinka.regex' => 'Polje lozinka nije u ispravnom formatu!'
//            ];
//            $request->validate($rules, $custom_messages);

            $ime = $request->input('ime');
            $prezime = $request->input('prezime');
            $korisnicko_ime = $request->input('korisnicko_ime');
            $lozinka = $request->input('loznika');
            $uloga_id = $request->input('ddluloga');
            $query = $request->input('query');
            $id_user = $request->input('id_user');

            $korisnik = new Korisnik();

            $korisnik->first_name = $ime;
            $korisnik->last_name = $prezime;
            $korisnik->user_name = $korisnicko_ime;
            $korisnik->password = $lozinka;
            $korisnik->role_id = $uloga_id;

            try {
                $rez = $korisnik->adminUser_insert();
                if ($rez) {
                    $activity = new Activity();
                    $write = $activity->insertActivity($query, $id_user);
                    return redirect()->route('adminUsers')->with('poruka', 'Uspesno ste uneli korisnika!');
                } else {
                    return redirect()->route('adminUsers_insert')->with('poruka', 'Niste uneli korisnika!');
                }
            } catch (\Exception $ex) {
                \Log::error('Greska: ' . $ex->getMessage());
            }
        }
    }

    public function adminUsers_update($id_user) {
        $korisnik = new Korisnik();
        $korisnik->id_user = $id_user;

        $uloga = new Uloga();
        $this->data['korisnik'] = $korisnik->getOne($id_user);
        $this->data['uloga'] = $uloga->getAll();
        return view('pages.adminUsers_update', $this->data);
    }

    public function doAdminUsers_update(UserRequest $request, $id_user) {
        if ($request->has('btnUpdateUser')) {
            $first_name = $request->input('ime');
            $last_name = $request->input('prezime');
            $user_name = $request->input('korisnicko_ime');
            $password = $request->input('loznika');
            $role_id = $request->input('ddluloga');
            $query = $request->input('query');
            $id_user1 = $request->input('id_user');

            $korisnik = new Korisnik();
            $korisnik->id_user = $id_user;
            $korisnik->first_name = $first_name;
            $korisnik->last_name = $last_name;
            $korisnik->user_name = $user_name;
            $korisnik->role_id = $role_id;

            if ($password == null) {
                return redirect()->route('adminUsers_update', ['id_user' => $korisnik->id_user])->with('poruka', 'Morate uneti lozinku!');
            } else {
                $korisnik->password = $password;
            }
            try {
               $this->data['user'] = $korisnik->update_User($id_user);
//                dd($rez);

                if ($this->data['user']) {
                    $activity = new Activity();
                    $write = $activity->insertActivity($query, $id_user1);
                    return redirect()->route('adminUsers')->with('poruka', 'Uspesno ste uneli izmenu za korisnika!');
                } else {
                    return redirect()->route('adminUsers_update')->with('poruka', 'Nije uspela izmena!');
                }
            } catch (\Exception $ex) {
                \Log::error('Greska: ' . $ex->getMessage());
            }
        }
    }

    public function adminUsers_delete($id_user) {
        $korisnik = new Korisnik();
        $korisnik->id_user = $id_user;
        $query = 'DELETE_user';
        $id_user = 1;
        try {
            $rez = $korisnik->delete_User($id_user);
            if ($rez == true) {
                $activity = new Activity();
                $write = $activity->insertActivity($query, $id_user);
                return redirect()->route('adminUsers')->with('poruka', 'Uspesno ste izbrisali korisnika!');
            } else {
                return redirect()->route('adminUsers')->with('poruka', 'Brisanje nije izvrseno!');
            }
        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessaage());
        }
    }
}
