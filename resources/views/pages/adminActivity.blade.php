@extends('layout.index')

@section('title')
    Admin
@endsection

@section('content')
    @empty(!session('poruka'))
        {{session('poruka')}}
    @endempty
        <div class="table">
            <form method="POST" action="{{route('sortByDate')}}">
                <table class="move_right1">
                    <label class="naslov_news_activity1">Aktivnosti
                    </label>

                    <tr>
                        <td><input type="date" name="sortByDate" id="sortByDate"/></td>
                    </tr>
                </table>
            </form>
            <div id="ispis">
                <table style="border:1px solid #000;margin-top: 25px;margin-left: 350px;">
                    <tr class="admin">
                        <th class="admin">Upit</th>
                        <th class="admin">Datum postavljanja</th>
                        <th class="admin">Korisnik</th>
                    </tr>
                    @isset($activity)
                        @foreach($activity as $a)
                            <tr class="admin">
                                <td class="admin">{{$a->query}}</td>
                                <td class="admin">{{date("d.m.Y H:i:s",$a->time)}}</td>
                                <td class="admin">{{$a->user_name}}</td>
                            </tr>
                        @endforeach
                    @endisset
                </table>
            </div>
        </div>
@endsection