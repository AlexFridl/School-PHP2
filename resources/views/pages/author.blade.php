@extends('layout.index')
@section('title')
    Autor
@endsection

@section('content')
    <div class="move_right">
        @empty(!session('poruka'))
            {{session('poruka')}}
        @endempty
    </div><div class="author" style="width:800px;height:700px;margin:auto;">
    <label class="naslov">Autor</label>
    @isset($author)

            <h2 style="color: darkblue;">{{$author->first_last_name}}</h2>
            </br>
            <img src="{{$author->image_path}}"  class="rounded float-left" alt="{{$author->first_last_name}}"/></br></br></br>
            {{$author->text1}}</br>
            {{$author->text2}}</br>
            {{$author->text3}}</br>
            {{$author->text4}}</br>
            </br>
            <b>Broj indeksa: </b>{{$author->no_index}}
    @endisset
    </div>
@endsection