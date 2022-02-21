@extends('layout.index')

@section('title')
    Registracija
@endsection

@section('content')
    <div class="move_right">
        @empty(!session('poruka'))
            {{session('poruka')}}
        @endempty
    </div>
    <div class="move_right">
        <form method="POST" action="{{route('doReg')}}">
            {{csrf_field()}}
            <input type="hidden" name="query" value="INSERT user/registracija"/>
            <table>
                <label class="naslov">Registracija</label>
                <tr>
                    <td>Ime:</td>
                    <td><input type="text" name="ime" class="form-control" placeholder="Ime"/></td>
                </tr>
                <tr>
                    <td>Prezime:</td>
                    <td><input type="text" name="prezime"  class="form-control" placeholder="Prezime"/></td>
                </tr>
                <tr>
                    <td>Korisnicko ime:</td>
                    <td><input type="text" name="korisnicko_ime"  class="form-control" placeholder="Korisnicko ime"/></td>
                </tr>
                <tr>
                    <td>Lozinka:</td>
                    <td><input type="password" name="lozinka"  class="form-control" placeholder="Lozinka"/></td>
                </tr>
                <tr>
                     <td><input type="submit" name="btnRegistracija" value="Registruj se"/></td>
                </tr>
            </table>
        </form>
    </div>
        @if($errors->any())
            <div class="alert alert-danger" style="margin-top: 50px;">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
@endsection