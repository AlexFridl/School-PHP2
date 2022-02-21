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
        <div id="ispis"></div>
        <label class="naslov">Dodati novu kategoriju</label>
        <form method="POST" action="{{route('doAdminCategory_insert')}}">
            {{csrf_field()}}
            <input type="hidden" name="query" id="query" value="INSERT category"/>
            <input type="hidden" name="id_user" id="id_user" value="{{session()->get('user')->id_user}}"/>
            <table>
                <tr>
                    <td>Ime kategorije: </td>
                    <td><input type="text" name="name" class="form-control" placeholder="Ime"/></td>
                </tr>
                <tr>
                    <td align="center">
                    <td><input type="button" name="btnAddCategory" id="btnAddCategory" value="Dodaj kategoriju"/></td>
                </tr>
            </table>
        </form>
    </div>
    @if($errors->any())
        <div class="alert alert-danger" style="margin-top: 150px;">
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{$error}}</li>
                    @endforeach
            </ul>
        </div>
    @endif
@endsection