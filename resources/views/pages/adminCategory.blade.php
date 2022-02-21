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

        <label class="naslov">Kategorije
            <a class="dodaj" href="{{route('adminCategory_insert')}}">Dodaj kategoriju</a>
        </label>
        <div id="ispis">
            <div>
                <tr class="admin">
                    <th class="admin">Kategorije</th>
                    <th class="admin">Izmeni</th>
                    <th class="admin">Obrisi</th>
                </tr>
                @isset($kategorija)
                @foreach($kategorija as $k)
                <tr class="admin">
                    <td class="admin">{{$k->name_category}}</td>
                    <td class="admin"><a href="{{route('adminCategory_update',['id_category'=>$k->id_category])}}">Izmeni</a></td>
                    <td class="admin">
                        <a href="{{route('adminCategory_delete',['id_category'=>$k->id_category])}}" class="obrisi" data-id="{{$k->id_category}}">Obrisi</a>
                    </td>
                </tr>
                @endforeach
                @endisset
            </table>
        </div>
    </table>
</div>
@endsection