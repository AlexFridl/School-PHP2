<?php


namespace App\Models;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    public $id_message;
    public $title;
    public $text;
    public $email;
    public $first_last_name;
    public $posted;

    public function getAll(){
        return $rez = DB::table('contacts')
            ->select('*')
            ->get();
    }
    public function insert_message(){
        return $rez = DB::table('contacts')
            ->insert([
               'title'=>$this->title,
                'text'=>$this->text,
                'email'=>$this->email,
                'first_last_name'=>$this->first_last_name,
                'posted'=>time()
            ]);
    }
    public function delete_contact($id_contact){
        return $rez = DB::table('contacts')
            ->where('id_contact','=',$this->id_contact)
            ->delete();
    }

}