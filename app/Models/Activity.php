<?php

namespace App\Models;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class Activity extends Model
{
    public function getAll(){
        return $rez = DB::table('activities')
            ->join('users','activities.user_id','=','users.id_user')
            ->select('*')
            ->get();
    }
    public function insertActivity($query,$user_id){
        return $rez = DB::table('activities')
            ->insert([
                'time'=>time(),
                'query'=>$query,
                'user_id'=>$user_id
            ]);
    }
    public function insertActivityFront($query,$user){
        return $rez = DB::table('activities')
            ->insert([
                'time'=>time(),
                'query'=>$query,
                'user_id'=>$user
            ]);
    }
    public function doSortByDate($unos){
        return $rez = DB::table('activities')
            ->select('*')
            ->where('time' ,'=',$unos)
            ->get();
    }
}