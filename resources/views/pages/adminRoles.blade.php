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
            <label class="naslov">Uloge
                <a class="dodaj"  href="{{route('adminRoles_insert')}}">Dodaj ulogu</a>
            </label>
                <tr class="admin">
                <th class="admin">Ime uloge</th>
                <th class="admin">Izmeni</th>
                <th class="admin">Obrisi</th>
            </tr>
            @isset($uloga)
                @foreach($uloga as $u)
            <tr class="admin">
                <td class="admin">{{$u->name_role}}</td>
                <td class="admin"><a href="{{route('adminRoles_update',['id_role'=>$u->id_role])}}">Izmeni</a></td>
                <td class="admin"><a href="{{route('adminRoles_delete',['id_role'=>$u->id_role])}}">Obrisi</a></td>
            </tr>
                @endforeach
                @endisset
        </table>
    </div>
@endsection