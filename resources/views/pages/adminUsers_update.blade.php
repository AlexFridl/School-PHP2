@extends('layout.index')

@section('title')
    Admin
@endsection

@section('content')
    <div class="move_right">
        @empty(!session('poruka'))
            {{session('poruka')}}
        @endempty
    </div>
    @isset($korisnik)
        <div class="move_right">
            <label class="naslov">Izmeni podatke o korisniku</label>
            <form method="POST" action="{{route('doAdminUsers_update',['id_user'=>$korisnik->id_user])}}">
                {{csrf_field()}}
                <input type="hidden" name="query" value="UPDATE user"/>
                <input type="hidden" name="id_user" value="{{session()->get('user')->id_user}}"/>
                <table>
                    <tr>
                        <td>Ime: </td>
                        <td><input type="text" name="ime" class="form-control" placeholder="Ime" value="{{isset($korisnik)?$korisnik->first_name:old("Ime korisnika")}}"/></td>
                    </tr>
                    <tr>
                        <td>Prezime: </td>
                        <td><input type="text" name="prezime" class="form-control" placeholder="Prezime" value="{{isset($korisnik)?$korisnik->last_name:old("Prezime korisnika")}}"/></td>
                    </tr>
                    <tr>
                        <td>Korisnicko ime: </td>
                        <td><input type="text" name="korisnicko_ime" class="form-control" placeholder="Korisnicko ime" value="{{isset($korisnik)?$korisnik->user_name:old('Korsinicko ime')}}"/></td>
                    </tr>
                    <tr>
                        <td>Lozinka: </td>
                        <td><input type="password" name="loznika" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>Uloga: </td>
                        <td>
                            <select id="ddluloga" name="ddluloga">
                                @isset($uloga)
                                    @foreach($uloga as $u)
                                        @if($korisnik->role_id == $u->id_role)
                                            <option value="{{$korisnik->role_id}}" selected>{{$korisnik->name_role}}</option>
                                        @else
                                            <option value="{{$u->id_role}}">{{$u->name_role}}</option>
                                        @endif
                                    @endforeach
                                    @endisset
                            </select>
                    </tr>
                    <tr>
                        <td align="center">
                        <td><input type="submit" name="btnUpdateUser" value="Izmeni korisnika"/></td>
                    </tr>
                </table>
            </form>
            @if($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach($errors->all() as $e)
                            <li>{{$e}}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
        </div>
    @endisset
@endsection



