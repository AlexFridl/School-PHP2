<?php
/**
 * Created by PhpStorm.
 * User: Mladjica
 * Date: 3/26/2019
 * Time: 1:35 AM
 */

namespace App\Models;
use Illuminate\Support\Facades\DB;
class Korisnik
{
    public $id_user;
    public $first_name;
    public $last_name;
    public  $email;
    public $password;
    public $user_name;
    public $name_role;
    public $role_id;

    public function insertRegistracija(){
        return $rez = DB::table('users')
            ->insertGetId([
                'first_name'=>$this->first_name,
                'last_name'=>$this->last_name,
                'password'=>md5($this->password),
                'user_name'=>$this->user_name,
                'role_id'=>$this->role_id = 2
            ]);
    }

    public function checkUser($user_name,$password){
        return $rez = DB::table('users as u')
            ->join ('roles as r','u.role_id','=','r.id_role')
            ->where([
                ['user_name','=',$user_name],
                ['password','=',$password]
            ])
            ->select('u.*','r.*')
            ->first();
    }
    public function getAll(){
            return $rez = DB::table('users as u')
                ->join('roles as r','u.role_id','=','r.id_role')
                ->select('u.*','r.*')
                ->get();
    }

    public function adminUser_insert(){
            return $rex = DB::table('users')
                ->insert([
                   'first_name'=>$this->first_name,
                   'last_name'=>$this->last_name,
                   'user_name'=>$this->user_name,
                   'password'=>md5($this->password),
                   'role_id'=>$this->role_id
                ]);
    }

    public function getOne($id_user){
        return $rez = DB::table('users as u')
            ->join ('roles as r','u.role_id','=','r.id_role')
            ->where([
                ['id_user','=',$id_user]
            ])
            ->select('u.*','r.*')
            ->first();
    }

    public function update_User(){
            return $rez = DB::table('users')
                    ->where('id_user',$this->id_user)
                    ->update(
                        ['first_name'=>$this->first_name,
                         'last_name'=>$this->last_name,
                         'user_name'=>$this->user_name,
                         'password'=>md5($this->password),
                         'role_id'=>$this->role_id
                        ]);
    }

    public function delete_User(){
            return $rez = DB::table('users')
                ->where('id_user',$this->id_user)
                ->delete();
    }
}