<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use PHPUnit\Util\RegularExpressionTest;

class Uloga extends Model
{

    public $id_role;
    public $name_role;

    public function getAll(){
        return $rez = DB::table('roles')
            ->select('*')
            ->get();
    }
    public function getRoles(){
        return $rez = DB::table('roles')
            ->select('*')
            ->get();
    }

    public function getOne(){
        return $rez = DB::table('roles')
            ->select('*')
            ->where('id_role',$this->id_role)
            ->first();
    }

    public function insert_role(){
        return $rez = DB::table('roles')
            ->insert([
                'name_role'=>$this->name_role
            ]);
    }

    public function update_Role(){
        return $rez = DB::table('roles')
            ->where('id_role',$this->id_role)
            ->update(['name_role'=>$this->name_role]);
    }

    public function delete_role(){
        return $rez = DB::table('roles')
            ->where('id_role',$this->id_role)
            ->delete();
    }

}
