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
        <label class="naslov">Dodavanje novog korisnika</label>
        <form method="POST" action="{{route('doAdminUsers_insert')}}">
            {{csrf_field()}}
            <input type="hidden" name="query" value="INSERT user"/>
            <input type="hidden" name="id_user" value="{{session()->get('user')->id_user}}"/>
            <table>
                <tr>
                    <td>Ime: </td>
                    <td><input type="text" name="ime" class="form-control" placeholder="Ime"/></td>
                </tr>
                <tr>
                    <td>Prezime: </td>
                    <td><input type="text" name="prezime" class="form-control" placeholder="Prezime"/></td>
                </tr>
                <tr>
                    <td>Korisnicko ime: </td>
                    <td><input type="text" name="korisnicko_ime" class="form-control" placeholder="Korisnicko ime"/></td>
                </tr>
                <tr>
                    <td>Lozinka: </td>
                    <td><input type="text" name="loznika" class="form-control" placeholder="Lozinka"/></td>
                </tr>
                <tr>
                    <td>Uloga: </td>
                    <td>
                        <select id="ddluloga" name="ddluloga">
                            <option value="0">Izaberi</option>

                        @isset($uloga)
                                @foreach($uloga as $u)
                                    <option value="{{$u->id_role}}">{{$u->name_role}}</option>
                                @endforeach
                            @endisset
                        </select>
                </tr>
                <tr>
                    <td align="center">
                    <td><input type="submit" name="btnAddUser" value="Dodaj korisnika"/></td>
                </tr>
            </table>
        </form>
    </div>
    @if($errors->any())
        <div class="alert alert-danger" style="margin-top: 50px;">
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{$error}}</li>
                @endforeach
            </ul>

        </div>
    @endif
@endsection