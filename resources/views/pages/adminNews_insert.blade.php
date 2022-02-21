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
    <div class="move_right">
        <label class="naslov">Dodati novu vest</label>
        <form method="POST" action="{{route('doAdminNews_insert')}}" enctype="multipart/form-data">
            {{csrf_field()}}
            <input type="hidden" name="query" value="INSERT news"/>
            <input type="hidden" name="id_user" value="{{session()->get('user')->id_user}}"/>
            <table>
                <tr>
                    <td>Naslov: </td>
                    <td><input type="text" name="naslov" class="form-control" placeholder="Naslov"/></td>
                </tr>
                <tr>
                    <td>Podnaslov: </td>
                    <td><input type="text" name="podnaslov" class="form-control" placeholder="Podnaslov"/></td>
                </tr>
                <tr>
                    <td>Tekst: </td>
                    <td><textarea name="tekst" class="form-control" placeholder="Tekst"> </textarea></td>
                </tr>
                <tr>
                    <td>Slika: </td>
                    <td><input type="file" name="slika" class="form-control" placeholder="slika"/></td>
                </tr>
                <tr>
                    <td>Kategorija: </td>
                    <td>
                        <select id="ddlKategorija" name="ddlKategorija">
                           <option value="0">Izaberi</option>
                            @isset($kategorija)
                                @foreach($kategorija as $k)
                            <option value="{{$k->id_category}}">{{$k->name_category}}</option>
                            @endforeach
                                    @endisset
                        </select>
                </tr>
                <tr>
                    <td align="center">
                    <td><input type="submit" name="btnAddNews" value="Dodaj vest"/></td>
                </tr>
            </table>
        </form>
        @if($errors->any())
            <div class="alert alert-danger" style="margin-top: 150px;">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
    </div>


@endsection