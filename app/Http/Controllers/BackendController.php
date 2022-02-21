<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\News;
use App\Models\Slika;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use App\Models\Kategorija;
use App\Models\Korisnik;
use App\Models\Uloga;
use App\Models\Activity;
use App\Models\Contact;
use Illuminate\Support\Facades\Response;


class BackendController extends Controller {

    public $data = [];

    public function activity() {
        $activity = new Activity();
        try {
            $this->data['activity'] = $activity->getAll();
        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
        return view('pages.adminActivity', $this->data);
    }

    public function adminSearch(Request $request) {
        $unos = $request->post('unos');

        $news = new News();
        $rez = $news->getBySearch($unos);

//        $totalCount = $rez->count();
//
//        $perPage = 3;
//        $pageCount = ceil($totalCount/$perPage);

//        $page = $request->has('page') ? $request->get('page') : 1;
//
//        $offset = ((int)$page-1) * $perPage;
//
//        $rez1 = $rez->skip($offset)->take($perPage);


        $podaci = null;
        $podaci .= "<table style='border:1px solid #000;'>";
        $podaci .= "<label class='naslov'>Vesti";
        $podaci .= "<a class='dodaj' href='" . route('adminNews_insert') . "'>Dodaj vest</a>";
        $podaci .= "</label>";
        $podaci .= "<tr class='admin'>";
        $podaci .= "<th class='admin'>Naslov</th>";
        $podaci .= "<th class='admin'>Podnaslov</th>";
        $podaci .= " <th class='admin'>Tekst</th>";
        $podaci .= "<th class='admin'>Putanja slike</th>";
        $podaci .= "<th class='admin'>Kategorija</th>";
        $podaci .= "<th class='admin'>Datum postavljanja</th>";
        $podaci .= "<th class='admin'>Izmeni</th>";
        $podaci .= "<th class='admin'>Obrisi</th>";
        $podaci .= "</tr>";
        foreach ($rez as $item) {
            $podaci .= "<tr class='admin'>";
            $podaci .= "<td class='admin'>" . $item->title_news . "</td>";
            $podaci .= "<td class='admin'>" . $item->subtitle . "</td>";
            $podaci .= "<td class='admin'>" . $item->text_news . "</td>";
            $podaci .= "<td class='admin'><img src='" . $item->picture_path . "' width='100px' height='100px' alt='slika'/></td>";
            $podaci .= "<td class='admin'>" . $item->name_category . "</td>";
            $podaci .= "<td class='admin'>" . date('d.m.Y H:i:s', $item->posted_date) . "</td>";
            $podaci .= "<td class='admin'><a href='" . route('adminNews_update', ['id_new' => $item->id_news]) . "'>Izmeni</a></td>";
            $podaci .= "<td class='admin'><a href='" . route('adminNews_delete', ['id_news' => $item->id_news]) . "'>Obrisi</a></td>";
            $podaci .= "</tr>";
        }
        $podaci .= "</table>";
        return json_encode($podaci);
    }

    public function sortByDate(Request $request) {
        $unos = $request->post('unos');
        $podaci = null;
        list($year_sort, $month_sort, $day_sort) = explode('-', $unos);

        $activity = new Activity();
        $rez = $activity->getAll();

        $podaci .= "<table style='border:1px solid #000;margin-top: 25px;margin-left: 350px;'>";
        $podaci .= "<tr class='admin'>";
        $podaci .= "<th class='admin'>Upit</th>";
        $podaci .= "<th class='admin'>Datum postavljanja</th>";
        $podaci .= "<th class='admin'>Korisnik</th>";
        $podaci .= "</tr>";
        foreach ($rez as $r) {
            $date = date('Y-m-d', $r->time);
            list($year, $month, $day) = explode('-', $date);

            if ($day_sort == $day && $month_sort == $month && $year_sort == $year) {
                $podaci .= "<tr class='admin'>";
                $podaci .= "<td class='admin'>$r->query</td>";
                $podaci .= "<td class='admin'>" . date('d.m.Y H:i:s', $r->time) . "</td>";
                $podaci .= "<td class='admin'>$r->user_name</td>";
                $podaci .= "</tr>";
            }
        }
        $podaci .= "</table>";
        return json_encode($podaci);
    }

    public function admin_contactForm() {
        $contact = new Contact();
        $this->data['contact'] = $contact->getAll();
        return view('pages.admin_contactForm', $this->data);
    }

    public function adminContactForm_delete($id_contact) {
        $contact = new Contact();
        $contact->id_contact = $id_contact;
        $query = "DELETE contact";
        $id_user = 1;

        $rez = $contact->delete_contact($id_contact);

        if ($rez == true) {
            $activity = new Activity();
            $write = $activity->insertActivity($query, $id_user);

            return redirect()->route('admin_contactForm')->with('poruka', 'Uspesno ste obavili brisanje poruke!');
        } else {
            return redirect()->route('admin_contactForm')->with('poruka', 'Niste obrisali poruku!');
        }
    }

}
