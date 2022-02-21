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
    <div class="move_right" >
        <table style="border:1px solid #000;margin-top: 50px;/*margin-left: 150px;*/">
            <label class="naslov_news1">Komentari
            </label>
            <tr class="admin">
                <th class="admin">Komentar</th>
                <th class="admin">Vest</th>
                <th class="admin">Postavljeno</th>
                <th class="admin">Korisnik</th>
                <th class="admin">Obrisi</th>
            </tr>
            @isset($comments)
                @foreach($comments as $c)
                    <tr class="admin">
                        <td class="admin">{{$c->text_comment}}</td>
                        <td class="admin">{{$c->title_news}}</td>
                        <td class="admin">{{date("d.m.Y H:i:s",$c->posted_at)}}</td>
                        <td class="admin">{{$c->user_name}}</td>
                        <td class="admin"><a href="{{route('adminComments_delete',['id_comment'=>$c->id_comment])}}" data-id="{{$c->id_comment}}">Obrisi</a></td>
                @endforeach
                     </tr>
            @endisset
        </table>
    </div>
@endsection