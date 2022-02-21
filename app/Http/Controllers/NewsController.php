<?php

namespace App\Http\Controllers;

use App\Models\Activity;
use App\Models\Kategorija;
use App\Models\News;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use App\Http\Requests\NewsRequest;
class NewsController extends Controller
{
    public function adminNews() {
        $news = new News();

        try {
            $this->data['news'] = $news->getAllNews();
        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
        return view('pages.adminNews', $this->data);
    }
    public function adminNews_insert() {
        $kategorija = new Kategorija();
        try {
            $this->data['kategorija'] = $kategorija->getAll();
        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
        return view('pages.adminNews_insert', $this->data);
    }
    public function doAdminNews_insert(NewsRequest $request) {
        if ($request->has('btnAddNews')) {

            $title_news = $request->input('naslov');
            $subtitle = $request->input('podnaslov');
            $text_news = $request->input('tekst');
            $query = $request->input('query');
            $id_user = $request->input('id_user');

            $photo = $request->file('slika');

            $tmp_path = $photo->getPathname();
            $extension = $photo->getClientOriginalExtension();
            $photo_name = time() . '.' . $extension;
            $new_path = 'images/' . $photo_name;

            $category = $request->input('ddlKategorija');

            // Upload slike na server
            File::move($tmp_path, $new_path);

            $news = new News();
            $news->title_news = $title_news;
            $news->subtitle = $subtitle;
            $news->text_news = $text_news;
            $news->picture_path = $new_path;
            $news->category_id = $category;
            $news->posted_date = time();
            //$news->status = $status;

            try {
                $rez = $news->insert_News();
                if ($rez) {
                    $activity = new Activity();
                    $write = $activity->insertActivity($query, $id_user);
                    return redirect()->route('adminNews')->with('poruka', 'Uspesno ste uneli vest!');
                } else {
                    return redirect()->route('adminNews_insert')->with('poruka', 'Niste uneli vest!');
                }
            } catch (\Exception $ex) {
                \Log::error('Greska: ' . $ex->getMessage());
            }
        }
    }
    public function adminNews_update($id_news) {
        $news = new News();
        $news->id_news = $id_news;
        $this->data['news'] = $news->oneNews($id_news);

        $kategorija = new Kategorija();
        $this->data['kategorija'] = $kategorija->getAll();

        return view('pages.adminNews_update', $this->data);
    }
    public function doAdminNews_update(NewsRequest $request, $id_news) {
        if ($request->has('btnUpdateNews')) {

            $title_news = $request->input('naslov');
            $subtitle = $request->input('podnaslov');
            $text_news = $request->input('tekst');
            $category_id = $request->input('ddlKategorija');

            if($request->file('slikaUpdate')){
                $photo = $request->file('slikaUpdate');
            }
            $photo = $request->input('imageHidden');

            $query = $request->input('query');
            $id_user = $request->input('id_user');

            $news = new News();
            $news->id_news = $id_news;
            $news->title_news = $title_news;
            $news->subtitle = $subtitle;
            $news->text_news = $text_news;

            $news->category_id = $category_id;
            $news->posted_date = time();

            if ($request->file('slikaUpdate')) {
                $photo = $request->file('slikaUpdate');

                $news = new News();
                $news->id_news = $id_news;
                $news->title_news = $title_news;
                $news->subtitle = $subtitle;
                $news->text_news = $text_news;
                $news->category_id = $category_id;
                $news->posted_date = time();

                $tmp_path = $photo->getPathName();
                $extension = $photo->getClientOriginalExtension();
                $photo_name = time() . '.' . $extension;
                $new_path = 'images/' . $photo_name;

                // Upload slike na server
                File::move($tmp_path, $new_path);
                $news->picture_path = $new_path;
            }
            else {
                $photo = $request->input('imageHidden');
                $news = new News();
                $news->id_news = $id_news;
                $news->title_news = $title_news;
                $news->subtitle = $subtitle;
                $news->text_news = $text_news;
                $news->category_id = $category_id;
                $news->posted_date = time();
                $news->picture_path = $photo;

//                $rezImage = $news->getPicturePath($id_news);
//                $news->picture_path = $rezImage[0]->picture_path;
            }
            try {
                $rez = $news->update_news($id_news);
                //var_dump($rez);
                if ($rez) {
                    $activity = new Activity();
                    $write = $activity->insertActivity($query, $id_user);
                    return redirect()->route('adminNews')->with('poruka', 'Uspeno ste izmenili vest!');
                } else {
                    return redirect()->route('adminNews_update', ['id_news' => $news->id_news])->with('poruka', 'Izmena vesti nije izvrsena!');
                }
            } catch (\Exception $ex) {
                \Log::error('Greska: ' . $ex->getMessage());
            }
        }
    }
    public function adminNews_delete($id_news) {
        $news = new News();
        $news->id_news = $id_news;
        $query = 'DELETE_news';
        $id_user = 1;
        try {
            $rez = $news->delete_news($id_news);

            if ($rez == true) {
                $activity = new Activity();
                $write = $activity->insertActivity($query, $id_user);
                return redirect()->route('adminNews')->with('poruka', 'Uspesno ste izbrisali vest!');
            } else {
                return redirect()->route('adminNews')->with('poruka', 'Brisanje vesti nije izvrseno!');
            }
        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
    }

    public static function adminNewsSearch($search) {
        $news = new News();

        try {

            $news = $news->getBySearch($search);

        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
        return $news;
    }

}
