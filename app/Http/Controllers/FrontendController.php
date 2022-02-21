<?php

namespace App\Http\Controllers;

use App\Models\Kategorija;
use http\Message;
use Illuminate\Http\Request;
use  App\Models\Author;
use App\Models\News;
use App\Models\Contact;
use App\Models\Activity;
use Illuminate\Support\Str;
use Illuminate\Pagination\Paginator;
use Illuminate\Pagination\LengthAwarePaginator;
use function MongoDB\BSON\toJSON;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

class  FrontendController extends Controller
{
    private $data = [];

    public function index()
    {
        $kategorija = new Kategorija();
        try{
            $this->data['kategorije'] = $kategorija->getAll();
        }
        catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
        $news = new News();
        try{
            $this->data['news'] = $news->getAllNews();
        }
        catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
        return view('pages.home', $this->data);
    }

    public function category($category_id)
    {
      echo "Pozdrav";
        $kategorija = new Kategorija();
        $this->data['kategorije'] = $kategorija->getAll();

        $news = new News();
        $this->data['news'] = $news->showAllNewsFromCategory($category_id);
        return view('pages.home', $this->data);
    }

    public function showOne($id){
        $news = new News();
        $this->data['id'] = $id;

        if(!empty($id)){
            $news->id_news = $id;
            $this->data['news'] = $news->oneNews($id);

            $this->data['comment'] = $news->getComment($id);
            return view('pages.oneNews',$this->data);
        }
    }
    public function kontakt(){
        return view('pages.kontakt');
    }
    public function doKontakt(Request $request){
        if($request->has('btnPosalji')){
            $first_last_name = $request->input('ImePrezime');
            $title = $request->input('Naslov');
            $email = $request->input('Email');
            $text = $request->input('Poruka');
            $query = $request->input('query');
            $id_user = $request->input('id_user');

            require base_path().'/vendor/autoload.php';
            $mail = new PHPMailer(true);

            try{
                //Server settings
                $mail->SMTPDebug = 4;
                $mail->isSMTP();
                $mail->Host = "smtp.gmail.com";
                $mail->SMTPAuth = true;
                $mail->Username   = 'topNews.af@gmail.com';
                $mail->Password   = 'david280215';
                //$mail->Mailer = "smtp";
                $mail->SMTPSecure = 'ssl';
                $mail->Port       = 587;

                //Recipients
                $mail->setFrom('topNews.af@gmail.com', 'TopNews');
                $mail->addAddress('bebelak@gmail.com', 'Aleksandra Fridl');

                // Content
                $mail->isHTML(true); // Set email format to HTML
                $mail->CharSet = 'UTF-8';
                $mail->Subject = $title;
                $mailText = "<table>";
                $mailText .= "<tr><td>Ime i Prezime: </td><td>".$first_last_name."</td></tr>";
                $mailText .= "<tr><td>Email:</td><td>".$email."</td></tr>";
                $mailText .= "<tr><td>Poruka:</td><td>".$text."</td></tr>";
                $mail->Body    = $mailText; //$text;     //'This is the HTML message body <b>in bold!</b>';
                $mail->send();
                if($mail->send()) {
                    $contact = new Contact();
                    $contact->title = $title;
                    $contact->text = $text;
                    $contact->email = $email;
                    $contact->first_last_name = $first_last_name;
                    $rez = $contact->insert_message();

                    if ($rez == true) {
                        $activity = new Activity();
                        $write = $activity->insertActivity($query, $id_user);
                        if ($write == true) {
                            return redirect()->route('kontakt')->with('poruka', 'Uspesno ste poslali poruku administratoru!');
                        }
                    }
                    else {
                        return redirect()->route('kontakt')->with('poruka', 'Poruka nije poslata!');
                    }
                }
            }
            catch (\Exception $ex) {
                \Log::error('Greska: ' . $ex->getMessage());
            }
            }
        }

    public function showAuthor(){
        $author = new Author();
        try{
        $this->data['author']= $author->getAll();
        }
        catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
        return view('pages.author',$this->data);
    }
    public function search(Request $request){
        $unos = $request->post('unos');
                $news = new News();
                $rez = $news->getBySearch($unos);
        $podaci = null;
        foreach($rez as $n) {
            //$podaci .= $n->picture_path;
            $podaci .= "<div class='col-sm-4 col-lg-4 col-md-4' style='height:450px;text-overflow: ellipsis;'>";
            $podaci .= "<div class='thumbnail' style='padding-top: 0px;'>";
            $podaci .= "<img src='".asset('/').$n->picture_path."' class='img-fluid' style='weight:150px;height:150px;' alt='".$n->title_news."'/></br></br>";
            $podaci .= "<div class='caption' style='padding-top: 0px;'>";
            $podaci .= "<h5><b><a href='".route('showOne',['id_news'=>$n->id_news])."' style='color: darkblue;'>".$n->title_news."</a></b>";
            $podaci .= "</h5>";
            $podaci .= "<p>";
            $podaci .= $truncated = Str::limit($n->text_news, 200, ' (...)');
            $podaci .= "</p>";
            $podaci .= "</div>";
            $podaci .= "<div class='ratings'>";
            $podaci .= "<p>";
            $podaci .= "<a href='".route('category',['id_category'=>$n->category_id])."' style='color:darkblue;'>".$n->name_category."</a>";
            $podaci .= "</p>";
            $podaci .= "<p>";
            $podaci .= "<b><a href='".route('showOne',['id_news'=>$n->id_news])."' style='color:#000;'>Više</a></b>";
            $podaci .= "</p>";
            $podaci .= "<p>";
            $podaci .= "<b>".date('d.m.Y H:i:s',$n->posted_date)."</b>";
            $podaci .= "</p>";
            $podaci .= "</div>";
            $podaci .= "</div>";
            $podaci .= "</div>";
        }
        return json_encode($podaci);
    }
    public function galerija(){
        $news = new News();
        try{
            $this->data['slike'] = $news->getImages();
        }
        catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
        return view('pages.galery',$this->data);
    }
}
