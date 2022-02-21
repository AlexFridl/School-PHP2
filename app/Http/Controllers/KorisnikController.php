<?php

namespace App\Http\Controllers;

use App\Models\Activity;
use Illuminate\Http\Request;
use App\Models\Comment;
use App\Models\Korisnik;
use App\Http\Requests\KorisnikRequest;

class KorisnikController extends Controller
{
    public $data = [];

    public function insert_comment(Request $request)
    {
        $unos = $request->post('unos');

        $rules = [
            'unos' => 'required',
        ];
        $custom_messages = [
            'required' => 'Neophodno je uneti komentar!',
        ];
        $rez_validate = $request->validate($rules, $custom_messages);

        $komentar = $request->input('unos');
        $news_id = $request->input('news_id');
        $user_id = $request->input('user_id');
        $query = $request->input('query');

        $comment = new Comment();
        $comment->text_comment = $komentar;
        $comment->posted_at = time();
        $comment->user_id = $user_id;
        $comment->news_id = $news_id;
        try{
            if ($rez_validate == true) {
                $rez = $comment->insert_comment();
                if ($rez == true) {
                    $commentNews = new Comment();
                    $commentNews->news_id = $news_id;
                    $rezComm = $commentNews->get_commentsNews($news_id);

                    $podaci = null;
                    $podaci .= "<h3 class='move_right'>Komentari:</h3>";
                    foreach($rezComm as $c){
                        $podaci .= "<hr>";
                        $podaci .= "<div class='move_right'>";
                        $podaci .= "<h4 style='color: darkblue;'>Korisnicko ime: $c->user_name</h4>";
                        $podaci .= $c->text_comment;
                        $podaci .= "<hr>";
                        $podaci .= "</div>";
                    }
                    return json_encode($podaci);
                }
            }
            else{
                return json_encode($rez_validate);
            }
        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
    }
    public function showKorisnik($id_user){
        $korisnik = new Korisnik();
        $korisnik->id_user = $id_user;
        try{
            $this->data['korisnik'] = $korisnik->getOne($id_user);
            return view('pages.showKorisnik',$this->data);
        }
        catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
    }
    public function changeUserData(KorisnikRequest $request,$id_user)
    {
        if ($request->has('btnIzmeniPodatke')) {
            $first_name = $request->input('ime');
            $last_name = $request->input('prezime');
            $user_name = $request->input('korisnicko_ime');
            $password = $request->input('lozinka');

            $query = $request->input('query');
            $id_user = $request->input('id_user');


            $korisnik = new Korisnik();
            $korisnik->id_user = $id_user;
            $korisnik->first_name = $first_name;
            $korisnik->last_name = $last_name;
            $korisnik->user_name = $user_name;
            $korisnik->role_id = 2;
            $korisnik->password = $password;

//            if ($password == NULL) {
//                return redirect()->route('showKorisnik', ['id_user' => $id_user])->with('poruka', 'Morate uneti lozinku!');
//            }
//            else {

            //}
                    try{
                        $rez = $korisnik->update_User($id_user);
                        if ($rez) {
                            $activity = new Activity();
                            $write = $activity->insertActivity($query,$id_user);
                            return redirect()->route('showKorisnik', ['id_user' => $id_user])->with('poruka', 'Uspesno ste izmenili svoje podatke!');
                        } else {
                            return redirect()->route('showKorisnik', ['id_user' => $id_user])->with('poruka', 'Izmena nije izvrsena!');
                        }
                    }
                    catch (\Exception $ex) {
                        \Log::error('Greska: ' . $ex->getMessage());
                    }
            }
        }
}
