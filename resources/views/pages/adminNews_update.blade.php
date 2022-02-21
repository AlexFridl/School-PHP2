
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
    @isset($news)
        @foreach($news as $n)
            <div class="move_right">
                <label class="naslov">Izmeni vest</label>
                <form method="POST" action="{{route('doAdminNews_update',['id_news'=>$n->id_news])}}" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <input type="hidden" name="query" value="UPDATE news"/>
                    <input type="hidden" name="id_user" value="{{session()->get('user')->id_user}}"/>
                    <table>
                        <tr>
                            <td>Naslov: </td>
                            <td><input type="text" name="naslov" class="form-control" placeholder="Ime" value="{{$n->title_news}}"/></td>
                        </tr>
                        <tr>
                            <td>Podnaslov: </td>
                            <td><textarea name="podnaslov" class="form-control" placeholder="Podnaslov"> {{$n->subtitle}}</textarea></td>
                        </tr>
                        <tr>
                            <td>Tekst: </td>
                            <td><textarea name="tekst" class="form-control" placeholder="Tekst" >{{$n->text_news}}</textarea></td>
                        </tr>
                        <tr>
                            <td>Slika: </td>
                            <td>
                                <img src="{{asset('/'.$n->picture_path)}}" width="200px" height="200px" alt="{{$n->title_news}}"/>
                                <input type="hidden" name="imageHidden" value="{{$n->picture_path}}"/>
                            </td>
                        </tr>
                    <tr></tr>
                        <tr>
                            <td>Izmeni sliku:</td>
                            <td><input type="file" name="slikaUpdate" id="slikaUpdate" /></td>
                        </tr>
                        <tr>
                            <td>Kategorija: </td>
                            <td>
                                <select id="ddlKategorija" name="ddlKategorija">--}}
                                   @isset($kategorija)
                                        @foreach($kategorija as $k)
                                            @if($n->category_id == $k->id_category)
                                                <option value="{{$k->id_category}}" selected>{{$k->name_category}}</option>
                                            @else
                                            <option value="{{$k->id_category}}">{{$k->name_category}}</option>
                                            @endif
                                        @endforeach
                                    @endisset
                                </select>
                        </tr>
                        <tr>
                            <td align="center">
                            <td><input type="submit" name="btnUpdateNews" value="Izmeni vest"/></td>

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
        @endforeach
    @endisset

@endsection