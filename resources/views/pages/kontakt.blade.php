@extends('layout.index')

@section('title')
    Kontakt
@endsection

@section('content')
    <div class="move_right">
        @empty(!session('poruka'))
            {{session('poruka')}}
        @endempty
    </div>
    <div class="move_right">
        <label class="naslov">Kontakt forma</label>
            <h3 style="color:darkblue; ">Pošaljite poruku administratoru</h3>
            <form method="POST" action="{{route('doKontakt')}}">
                {{csrf_field()}}
                <input type="hidden" name="query" value="INSERT message"/>
                <input type="hidden" name="id_user" value="11"/>
                <table>
                    <?php //echo (extension_loaded('openssl')?'SSL loaded':'SSL not loaded')."\n"; ?>
                    <tr>
                        <td>Vaše ime i prezime:</td>
                        <td><input type="text"  class="form-control" id="ImePrezime" name="ImePrezime"/></td>
                    </tr>
                    <tr>
                        <td>Vaš email:</td>
                        <td><input type="text" class="form-control" id="Email" name="Email"/></td>
                    </tr>
                    <tr>
                        <td>Naslov:</td>
                        <td><input type="text"  class="form-control" id="Naslov" name="Naslov"/></td>
                    </tr>
                    <tr>
                        <td>Vaša poruka</td>
                        <td><textarea type="text" class="form-control" id="Poruka" name="Poruka" placeholder="Ovde unesite poruku"></textarea></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" id="btnPosalji" name="btnPosalji" value="Pošalji" />
                        </td>
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
