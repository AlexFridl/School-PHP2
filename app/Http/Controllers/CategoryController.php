<?php

namespace App\Http\Controllers;

use App\Models\Activity;
use App\Models\Kategorija;
use Illuminate\Http\Request;
use App\Http\Requests\CategoryUpdateRequest;
class CategoryController extends Controller
{
    public function adminCategory() {
        $kategorija = new Kategorija();
        try {
            $this->data['kategorija'] = $kategorija->getAll();
        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
        return view('pages/adminCategory', $this->data);
    }
    public function adminCategory_insert() {
        return view('pages.adminCategory_insert');
    }
    public function doAdminCategory_insert(Request $request) {

        $podaci = null;
        $unos = $request->post('unos');

        $query = $request->input('query');
        $id_user = $request->input('id_user');

        $category = new Kategorija();
        $category->name_category = $unos;

        $rez = $category->insertCategory();
        if ($rez == true) {
            $activity = new Activity();
            $write = $activity->insertActivity($query, $id_user);

            $podaci .= "Uspesno ste uneli kategoriju!";
            return json_encode($podaci);
        } else {
            $podaci .= "Niste ste uneli kategoriju!";
            return json_encode($podaci);
        }
    }

    public function adminCategory_update($id_category) {
        $kategorija = new Kategorija();
        $kategorija->id_category = $id_category;

        $this->data['kategorija'] = $kategorija->getOne($id_category);

        return view('pages.adminCategory_update', $this->data);
    }
    public function doAdminCategory_update(CategoryUpdateRequest $request, $id_category) {
        if ($request->has('btnUpdateCategory')) {
            $ime_kategorije = $request->input('ime');

            $query = $request->input('query');
            $id_user = $request->input('id_user');

            $kategorija = new Kategorija();
            $kategorija->id_category = $id_category;
            $kategorija->name_category = $ime_kategorije;

            try {
                $this->data['kategorija'] = $kategorija->update_category();
                if ($ime_kategorije == $this->data['kategorija']['name_category']) {
                    if ($this->data['kategorija']) {
                        $activity = new Activity();
                        $write = $activity->insertActivity($query, $id_user);
                        return redirect()->route('adminCategory')->with('poruka', "Uspesno ste uneli izmenu!");
                    } else {
                        return redirect()->route('adminCategory_update', ['id_category' => $id_category])->with('poruka', "Izmena nije uspela!");
                    }
                } else {
                    return redirect()->route('adminCategory')->with('poruka', "Uspesno ste uneli izmenu!");
                }
            } catch (\Exception $ex) {
                \Log::error('Greska: ' . $ex->getMessage());
            }
        }
    }

    public function adminCategory_delete($id_category) {
        $kategorija = new Kategorija();
        $kategorija->id_category = $id_category;
        $query = 'DELETE_category';
        $id_user = 1;

        try {
            $rez = $kategorija->delete_category($id_category);
            if ($rez == true) {
                $activity = new Activity();
                $write = $activity->insertActivity($query, $id_user);
                return redirect()->route('adminCategory')->with('poruka', 'Uspesno brisanje!');
            } else {
                return redirect()->route('adminCategory')->with('poruka', 'Brisanje nije uspelo!');
            }
        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
            return response(null, 500);
        }
    }
}
