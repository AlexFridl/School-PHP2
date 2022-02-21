<?php
/**
 * Created by PhpStorm.
 * User: Mladjica
 * Date: 3/24/2019
 * Time: 8:02 PM
 */

namespace App\Models;
use Illuminate\Support\Facades\DB;

class Kategorija
{
    public $id_category;
    public $name_category;

    public function getAll(){
        return $rez = DB::table('categories')
            ->select('*')
            ->get();
    }


    public function insertCategory(){
        return $rez = DB::table('categories')
            ->insert([
               'name_category'=>$this->name_category
            ]);
    }

    public function getOne(){
        return $rez = DB::table('categories')
            ->select('*')
            ->where('id_category',$this->id_category)
            ->get();
    }

    public function update_category(){
        return $rez = DB::table('categories')
            ->where('id_category', $this->id_category)
            ->update(['name_category'=>$this->name_category]);
    }

    public function delete_category(){
        return $rez = DB::table('categories')
            ->where('id_category',$this->id_category)
            ->delete();
    }
}

