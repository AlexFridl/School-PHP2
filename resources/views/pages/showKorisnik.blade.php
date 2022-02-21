@extends('layout.index')

@section('title')
    Korisnik
@endsection

@section('content')
    <div class="move_right">
        @empty(!session('poruka'))
            {{session('poruka')}}
        @endempty
    </div>
    @isset($korisnik)
        <div class="move_right">
            <form method="POST" action="{{route('changeUserData',['id_user'=>$korisnik->id_user])}}">
                {{csrf_field()}}
                <input type="hidden" name="query" value="UPDATE user"/>
                <input type="hidden" name="id_user" value="{{session()->get('user')->id_user}}"/>
                <table>
                        <label class="naslov">Korisnicka stranica</label>
                        <tr>
                            <td>Ime:</td>
                            <td><input type="text" name="ime" class="form-control" placeholder="Ime" value="{{$korisnik->first_name}}"/></td>
                        </tr>
                        <tr>
                            <td>Prezime:</td>
                            <td><input type="text" name="prezime"  class="form-control" placeholder="Prezime" value="{{$korisnik->last_name}}"/></td>
                        </tr>
                        <tr>
                            <td>Korisnicko ime:</td>
                            <td><input type="text" name="korisnicko_ime"  class="form-control" placeholder="Korisnicko ime" value="{{$korisnik->user_name}}"/></td>
                        </tr>
                        <tr>
                            <td>Lozinka:</td>
                            <td><input type="password" name="lozinka"  class="form-control" placeholder="Lozinka" value=""/></td>
                        </tr>
                    <tr>
                        <td></td>
                        <td ><input type="submit" name="btnIzmeniPodatke" id="btnIzmeniPodatke" value="Izmeni svoje podatke"/> </td>
                    </tr>
                </table>
            </form>
            @if($errors->any())
                <div class="alert alert-danger" style="margin-top: 50px;">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
        </div>
@endisset

@endsection