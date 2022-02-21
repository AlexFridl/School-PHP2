@extends('layout.index')

@section('title')
    Logovanje
@endsection

@section('content')
    <div class="move_right">
        @empty(!session('poruka'))
            {{session('poruka')}}
        @endempty
    </div>
    <div class="move_right">
        <form method="POST" action="{{route('doLogin')}}" >
        {{csrf_field()}}
            <input type="hidden" name="query" value="SELECT user/logovanje"/>
            <table>
                <label class="naslov">Logovanje</label>
                <tr>
                    <td>Korisnicko ime:</td>
                    <td><input type="text" name="korisnicko_ime"  class="form-control" placeholder="Korisnicko ime"/></td>
                </tr>
                <tr>
                    <td>Lozinka:</td>
                    <td><input type="password" name="lozinka"  class="form-control" placeholder="Lozinka"/></td>
                </tr>
                <tr>
                    <td  colspan="2" align="center"><input type="submit" name="btnLogovanje" value="Uloguj se"/></td>
                </tr>
            </table>
        </form>
    </div>
@endsection
