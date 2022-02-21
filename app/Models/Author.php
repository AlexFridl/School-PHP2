<?php


namespace App\Models;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;


class Author extends Model
{
    public function getAll(){
        return $rez = DB::table('author')
            ->select('*')
            ->first();
    }
}
