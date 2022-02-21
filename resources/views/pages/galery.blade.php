@extends('layout.index')

@section('title')
    Galerija
@endsection

@section('content')
    <div class="move_right">
        @empty(!session('poruka'))
            {{session('poruka')}}
        @endempty
    </div>
    <div class="move_right" style="/*width:800px;height:700px;*/">
        <label class="naslov">Galerija</label>
        @isset($slike)
            <div class="picture">
                @foreach($slike as $s)
                    <h2 style="color: #1d68a7;">{{$s->title_news}}</h2>
                    </br>
                    <img src="{{$s->picture_path}}"  class="rounded float-left" alt="{{$s->title_news}}"/></br></br></br>
                @endforeach

                </br>
            </div>
        @endif
        <div id="galery">
            {{$slike->links()}}
        </div>
    </div>

@endsection
