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
    @isset($kategorija)
        @foreach($kategorija as $k)
            <div class="move_right">
                <label class="naslov">Izmeni naziv kategorije</label>
                <form method="POST" action="{{route('doAdminCategory_update',['id_category'=>$k->id_category])}}">
                    {{csrf_field()}}
                    <input type="hidden" name="query" value="UPDATE category"/>
                    <input type="hidden" name="id_user" value="{{session()->get('user')->id_user}}"/>
                    <table>
                        <tr>
                            <td>Ime kategorije: </td>
                            <td><input type="text" name="ime" class="form-control" placeholder="Ime kategorije" value="{{isset($k)?$k->name_category:old("Ime kategorije")}}"/></td>
                        </tr>
                        <tr>
                            <td align="center">
                            <td><input type="submit" name="btnUpdateCategory" value="Izmeni kategoriju"/></td>
                        </tr>
                    </table>
                </form>
                @if($errors->any())
                    <div class="alert">
                        <ul>
                            @foreach($errors->all() as $e)
                                <li>{{$e}}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
            </div>
        @endforeach
    @endisset
@endsection