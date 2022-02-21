<?php

namespace App\Http\Controllers;

use App\Models\Activity;
use App\Models\Uloga;
use Illuminate\Http\Request;
use App\Http\Requests\RoleRequest;

class RoleController extends Controller
{
    public function adminRoles() {
        $uloga = new Uloga();

        try {
            $this->data['uloga'] = $uloga->getRoles();
        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
        return view('pages.adminRoles', $this->data);
    }
    public function adminRoles_insert() {
        return view('pages.adminRoles_insert');
    }
    public function doAdminRoles_insert(RoleRequest $request) {
        if ($request->has('btnAddRole')) {
            $name_role = $request->input('uloga');
            $query = $request->input('query');
            $id_user = $request->input('id_user');

//            $rules = [
//                'uloga' => 'required|regex:/^[A-Z][a-z]{4,}$/'
//            ];
//            $custom_messages = [
//                'required' => 'Polje :attribute je obavezno!',
//                'uloga.regex' => 'Naziv uloge nije dobrog formata, mora sadrzati najmanje cetiri slova!',
//            ];
//            $request->validate($rules, $custom_messages);

            $uloga = new Uloga();

            $uloga->name_role = $name_role;
            try {
                $rez = $uloga->insert_role();
                if ($rez) {
                    $activity = new Activity();
                    $write = $activity->insertActivity($query, $id_user);
                    return redirect()->route('adminRoles')->with('poruka', 'Uspesno ste uneli ulogu!');
                } else {
                    return redirect()->route('adminRoles_insert')->with('poruka', 'Unos nije uspeo!');
                }
            } catch (\Exception $ex) {
                \Log::error('Greska: ' . $ex->getMessage());
            }
        }
    }
    public function adminRoles_update($id_role) {
        $uloga = new Uloga();
        $uloga->id_role = $id_role;

        $this->data['uloga'] = $uloga->getOne($id_role);
        return view('pages.adminRoles_update', $this->data);
    }
    public function doAdminRoles_update(RoleRequest $request, $id_role) {
        if ($request->has('btnUpdateRole')) {
            $name_role = $request->input('uloga');
            $query = $request->input('query');
            $id_user = $request->input('id_user');

//            $rules = [
//                'uloga' => 'required|regex:/^[A-Z][a-z]{4,}$/'
//            ];
//            $custom_messages = [
//                'uloga.required' => 'Polje :attribute je obavezno!',
//                'uloga.regex' => 'Naziv uloge nije dobrog formata, mora sadrzati najmanje cetiri slova!'
//            ];
//
//            $request->validate($rules, $custom_messages);

            $uloga = new Uloga();
            $uloga->name_role = $name_role;
            $uloga->id_role = $id_role;
            try {
                $this->data['uloga'] = $uloga->update_Role($id_role);


//                if ($name_role == $this->data['uloga']['name_role']) {
                    if ($this->data['uloga']) {
                    $activity = new Activity();
                    $write = $activity->insertActivity($query, $id_user);
                        return redirect()->route('adminRoles')->with('poruka', 'Upesno ste uneli izmenu!');


                    } else {
                        return redirect()->route('adminRoles_update', ['id_role' => $id_role])->with('poruka', 'Izmena nije uspela!');
                    }

//                } else {
//                    return redirect()->route('adminRoles')->with('poruka', 'Upesno ste uneli izmenu!');
//                }
            } catch (\Exception $ex) {
                \Log::error('Greska: ' . $ex->getMessage());
            }
        }
    }
    public function adminRoles_delete($id_role) {
        $uloga = new Uloga();
        $uloga->id_role = $id_role;
        $query = 'DELETE_roles';
        $id_user = 1;
        try {
            $rez = $uloga->delete_role();
            if ($rez == true) {
                $activity = new Activity();
                $write = $activity->insertActivity($query, $id_user);
                return redirect()->route('adminRoles')->with('poruka', 'Uspesno ste izbrisali ulogu!');
            } else {
                return redirect()->route('adminRoles')->with('poruka', 'Brisanje nije izvreseno!');
            }
        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessaage());
        }
    }

}
