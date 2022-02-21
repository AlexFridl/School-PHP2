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
    <div  class="move_right" >
        <label class="naslov_news_activity">Poruke administratoru
        </label>
        <table style="border:1px solid #000;margin-top: 25px;/*margin-left: 350px;*/">
            <tr class="admin">
                <th class="admin">Ime i prezime</th>
                <th class="admin">Naslov</th>
                <th class="admin">Email</th>
                <th class="admin">Poruka</th>
                <th class="admin">Postavljeno</th>
                <th class="admin">Obrisi</th>
            </tr>
            @isset($contact)
                @foreach($contact as $c)
                    <tr class="admin">
                        <td class="admin">{{$c->first_last_name}}</td>
                        <td class="admin">{{$c->title}}</td>
                        <td class="admin">{{$c->email}}</td>
                        <td class="admin">{{$c->text}}</td>
                        <td class="admin">{{date("d.m.Y H:i:s",$c->posted)}}</td>
                        <td class="admin"><a href="{{route('adminContactForm_delete',['id_contact'=>$c->id_contact])}}">Obrisi</a></td>
                    </tr>
                @endforeach
            @endisset
        </table>
    </div>
@endsection