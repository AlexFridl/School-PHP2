<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Korisnik;
//use App\Http\Requests\RegisterRequest;
use Illuminate\Validator;
use App\Models\Activity;
use App\Http\Requests\RegistracijaRequest;
class AuthController extends FrontendController
{
    public $data = [];

    public function registracija()
    {
      echo "Pozdrav";
        return view('pages.registracija');
    }
    public function logovanje()
    {
        return view('pages.logovanje');
    }
    public function doLog(Request $request)
    {
        if ($request->has('btnLogovanje')) {
            //dd($request);
            $user_name = $request->input('korisnicko_ime');
            $password = md5($request->input('lozinka'));
            $query = $request->input('query');

            $korisnik = new Korisnik();
            $korisnik->user_name = $user_name;
            $korisnik->password = $password;
            //dd($korisnik);
            try{
                $user = $korisnik->checkUser($user_name, $password);
                //dd($user);
                if ($user) {
                    $request->session()->put('user', $user);

                    $id_user = session()->get('user')->id_user;

                    $activity = new Activity();
                    $write = $activity->insertActivity($query,$id_user);

                    return redirect()->route('adminCategory')->with('poruka', 'Uspesno logovanje!');
                } else {
                    return redirect()->route('loginForma')->with('poruka', 'Niste ulogovani!');

                }
            }
            catch
            (\Exception $ex) {
                \Log::error('MOJA GRESKA: ' . $ex->getMessage());
            }
        }
    }
    public function logout(Request $request)
    {
        $request->session()->forget('user');
        $request->session()->flush('user');
        return redirect('/');
    }
    public function doReg(RegistracijaRequest $request)
    {
        if ($request->has('btnRegistracija')) {

            $first_name = $request->input('ime');
            $last_name = $request->input('prezime');
            $user_name = $request->input('korisnicko_ime');
            $password = $request->input('lozinka');
            $query = $request->input('query');
            $user = NULL;

            $korisnik = new Korisnik();

            $korisnik->first_name = $first_name;
            $korisnik->last_name = $last_name;
            $korisnik->user_name = $user_name;
            $korisnik->password = $password;
            try {
                $user = $korisnik->insertRegistracija();

                if ($user) {
                    $activity = new Activity();
                    $write = $activity->insertActivityFront($query,$user);
                    return redirect()->route('loginForma')->with('poruka', 'Uspesno ste se registrovali! Ulogujte se!');
                } else {
                    return redirect()->back()->with('poruka', 'Nije uspela registracija!');
                }
            } //
            catch
            (\Exception $ex) {
                \Log::error('MOJA GRESKA: ' . $ex->getMessage());
            }
        }
    }
}
