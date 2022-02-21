@extends('layout.index')

@section('title')
    Admin
@endsection

@section('search')
    <div class="admin_search" >
        <form class="form-inline" >
            {{csrf_field()}}
            <input class="form-control mr-sm-2" type="search" name="search" id="search" placeholder="Search" aria-label="Search" style="border:1px solid dimgray;">
            <button class="btn btn-outline-success msearchy-2 my-sm-0" type="button" id="btnAdminSearch" name="btnAdminSearch" style="background-color:darkgray;border:1px solid dimgray;">Search</button>
        </form>
    </div>
@endsection

@section('content')
    <div class="move_right">
        @empty(!session('poruka'))
            {{session('poruka')}}
        @endempty
    </div>

    @isset($news)
        <div id="news" style="text-align: center;">
            {{$news->links()}}
        </div>
        @endisset
        <div class="table">
            <div id="ispis">
            <table style="border:1px solid #000;">
                <label class="naslov">Vesti
                    <a class="dodaj" href="{{route('adminNews_insert')}}">Dodaj vest</a>
                </label>
                <tr class="admin">
                    <th class="admin">Naslov</th>
                    <th class="admin">Podnaslov</th>
                    <th class="admin">Tekst</th>
                    <th class="admin">Putanja slike</th>
                    <th class="admin">Kategorija</th>
                    <th class="admin">Datum postavljanja</th>
                    <th class="admin">Izmeni</th>
                    <th class="admin">Obrisi</th>
                </tr>
                @isset($news)
                     @foreach($news as $n)
                        <tr class="admin">
                            <td class="admin">{{$n->title_news}}</td>
                            <td class="admin">{{$n->subtitle}}</td>
                            <td class="admin">{{$n->text_news}}</td>
                            <td class="admin"><img src="{{$n->picture_path}}" width="100px" height="100px" alt="slika"/></td>
                            <td class="admin">{{$n->name_category}}</td>
                            <td class="admin">{{date("d.m.Y H:i:s",$n->posted_date)}}</td>
                            <td class="admin"><a href="{{route('adminNews_update',['id_news'=>$n->id_news])}}">Izmeni</a></td>
                            <td class="admin"><a href="{{route('adminNews_delete',['id_news'=>$n->id_news])}}">Obrisi</a></td>
                        </tr>
                        @endforeach
                    @endisset
            </table>
            </div>
    </div>
@endsection