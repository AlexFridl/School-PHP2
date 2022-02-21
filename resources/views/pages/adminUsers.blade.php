@extends('layout.index')

@section('title')
    Admin
@endsection

@section('content')
    <div class="move_right1">
        @empty(!session('poruka'))
            {{session('poruka')}}
        @endempty
    </div>
</br>
    </br>
    <div class="move_right1">
        <table class="admin">
            <label class="naslov">Korisnici
                <a class="dodaj" href="{{route('adminUsers_insert')}}">Dodaj korisnika</a>
            </label>
            <tr class="admin">
                <th class="admin">Ime</th>
                <th class="admin">Prezime</th>
                <th class="admin">Korisnicko ime</th>
                <th class="admin">Uloga</th>
                <th class="admin">Izmeni</th>
                <th class="admin">Obrisi</th>
            </tr>
            @isset($korisnik)
                @foreach($korisnik as $k)
            <tr>
                <td class="admin">{{$k->first_name}}</td>
                <td class="admin">{{$k->last_name}}</td>
                <td class="admin">{{$k->user_name}}</td>
                <td class="admin">{{$k->name_role}}</td>
                <td class="admin"><a href="{{route('doAdminUsers_update',['id_user'=>$k->id_user])}}">Izmeni</a></td>
                <td class="admin"><a href="{{route('adminUsers_delete',['id_user'=>$k->id_user])}}">Obrisi</a></td>
            </tr>
                @endforeach
            @endisset
        </table>
    </div>
@endsection