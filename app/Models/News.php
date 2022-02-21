<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Pagination\Paginator;
use Illuminate\Pagination\LengthAwarePaginator;
class News extends Model
{
    public $id_news;
    public $title_news;
    public $subtitle;
    public $text_news;
    public $picture_path;
    public $category_id;
    public $posted_date;
    public $status=1;

    public function getAllNews(){
        return $rez = DB::table('news as n')
                ->join('categories as c','n.category_id','=','c.id_category')
                ->select('n.*','c.*')
                ->orderBy('posted_date','desc')
                ->paginate(6);
    }
    public function showAllNewsFromCategory($category_id)
    {
       return $rez = DB::table('news')
            ->join('categories', 'news.category_id', '=', 'categories.id_category')
            ->select('*')
            ->where('categories.id_category', '=', $category_id)
            ->paginate(6);
    }
    public function oneNews($id){
        return $rez = DB::table('news as n')
            ->join('categories as c', 'n.category_id', '=', 'c.id_category')
            ->select('*')
            ->where('id_news','=',$id)
            ->get();
    }

    public function getComment($id){
        return $rez = DB::table('news as n')
            ->join('comments as c','c.news_id','=','n.id_news')
            ->join('users as u','c.user_id','=','u.id_user')
            ->select('*')
            ->where('id_news','=',$id)
            ->get();
    }

    public function delete_news(){
            return $rez = DB::table('news')
                ->where('id_news',$this->id_news)
                ->delete();
    }

    public function insert_News(){
        return $rez = DB::table('news')
            ->insertGetId([
                'title_news'=>$this->title_news,
                'subtitle'=>$this->subtitle,
                'text_news'=>$this->text_news,
                'picture_path'=>$this->picture_path,
                'category_id'=>$this->category_id,
                'posted_date'=>$this->posted_date,
                //'status'=>$this->status
            ]);
    }

    public function update_news($id_news){
        return $rez = DB::table('news')
            ->where('id_news',$this->id_news)
            ->update([
                'title_news'=>$this->title_news,
                'subtitle'=>$this->subtitle,
                'text_news'=>$this->text_news,
                'picture_path'=>$this->picture_path,
                'category_id'=>$this->category_id,
                'posted_date'=>$this->posted_date,
            ]);
    }

    public function getBySearch($unos){
        return $rez = DB::table('news')
            ->join('categories','news.category_id','=','categories.id_category')
            ->select('*')
            ->where('news.title_news','LIKE','%'.$unos.'%')
            ->orWhere('news.subtitle','LIKE','%'.$unos.'%')
            ->orWhere('news.text_news','LIKE','%'.$unos.'%')
            ->orderBy('news.posted_date','desc')
            ->get();
    }

    public function getImages(){
        return $rez = DB::table('news')
            ->select('picture_path','title_news')
            ->orderBy('posted_date','desc')
            ->simplePaginate(3);
    }

    public function getPicturePath($id_news){
        return $rez = DB::table('news')
            ->select('picture_path')
            ->where('id_news','=', $id_news)
            ->get();
    }
}
