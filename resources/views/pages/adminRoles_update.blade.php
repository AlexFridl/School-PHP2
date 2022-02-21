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
    @isset($uloga)
        <div class="move_right">
            <label class="naslov">Izmeni naziv uloge</label>
            <form method="POST" action="{{route('doAdminRoles_update',['id_role'=>$uloga->id_role])}}">
                {{csrf_field()}}
                <input type="hidden" name="query" value="UDATE role"/>
                <input type="hidden" name="id_user" value="{{session()->get('user')->id_user}}"/>
                <table>
                    <tr>
                        <td>Uloga: </td>
                        <td><input type="text" name="uloga" class="form-control" placeholder="Uloga" value="{{isset($uloga)?$uloga->name_role:old("Uloga")}}"/></td>
                    </tr>
                    <tr>
                        <td align="center">
                        <td><input type="submit" name="btnUpdateRole" value="Izmeni ulogu"/></td>
                    </tr>
                </table>
            </form>
            @if($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach($errors->all() as $e)
                            <li>{{$e}}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
        </div>
    @endisset
@endsection


