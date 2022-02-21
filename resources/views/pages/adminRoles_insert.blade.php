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
        <label class="naslov">Dodati novu ulogu</label>
        <form method="POST" action="{{route('doAdminRoles_insert')}}">
            {{csrf_field()}}
            <input type="hidden" name="query" value="INSERT role"/>
            <input type="hidden" name="id_user" value="{{session()->get('user')->id_user}}"/>
            <table>
                <tr>
                    <td>Uloga: </td>
                    <td><input type="text" name="uloga" class="form-control" placeholder="Uloga"/></td>
                </tr>
                <tr>
                    <td align="center">
                    <td><input type="submit" name="btnAddRole" value="Dodaj ulogu"/></td>
                </tr>
            </table>
        </form>
    </div>
    @if($errors->any())
        <div class="alert alert-danger" style="margin-top: 150px;">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
@endsection