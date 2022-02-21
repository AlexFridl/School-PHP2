<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
class Comment extends Model
{
    public $id_comment;
    public $text_comment;
    public $posted_at;
    public $user_id;
    public $news_id;

    public function get_comments(){
        return $rez = DB::table('comments')
            ->join('users','comments.user_id','=','users.id_user')
            ->join('news','comments.news_id','=','news.id_news')
            ->select('*')
            ->get();
    }
    public function get_commentsNews(){
        return $rez = DB::table('comments')
            ->join('users','comments.user_id','=','users.id_user')
            ->join('news','comments.news_id','=','news.id_news')
            ->where('news_id',$this->news_id)
            ->select('*')
            ->get();
    }

    public function insert_comment(){
        return $rez = DB::table('comments')
            ->insertGetId([
                'text_comment'=>$this->text_comment,
                'posted_at'=>$this->posted_at,
                'user_id'=>$this->user_id,
                'news_id'=>$this->news_id
            ]);
    }

    public function delete_comment($id_comment){
        return $rez = DB::table('comments')
            ->where('id_comment','=',$this->id_comment)
            ->delete();
    }

    public function getOne($id_comment){
        return $rez = DB::table('comments')
            ->join('users','comments.user_id','=','users.id_user')
            ->join('news','comments.news_id','=','news.id_news')
            ->select('*')
            ->where('id_comment','=',$this->id_comment)
            ->first();
    }
}
