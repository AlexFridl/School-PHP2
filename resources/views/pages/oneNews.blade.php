@extends('layout.index')

@section('title')

    @if(isset($news))
        @foreach($news as $n)
            {{$n->name_category}}
            @endforeach
    @endif
@endsection

@section('content')
    @isset($news)
        @foreach($news as $n)

            <div class="col-md-9">
                <div class="row">
                        <div class="move_right">
                            <h2>{{$n->title_news}}</h2>
                            <h6>{{date("d.m.Y H:i:s",$n->posted_date)}}</h6>
                            <img class="img-fluid" src="{{ asset('/'.$n->picture_path) }}" style="weight:800px;height:300px;" alt="{{$n->title_news}}"/></br></br>
                            <p>{{$n->subtitle}}</br>
                            {{$n->text_news}}
                            </p>
                            <h5><b>Kategorija:</b> {{$n->name_category}}</h5>
                        </div>
                </div>
                <div>
                    @if(empty(!session()->has('poruka')))
                        <div class="move_right">
                            Korisnik:
                            <u><h3 style="color: darkblue;">{{session()->get('user')->user_name}}</h3></u>
                        {{session('poruka')}}
                        </br>
                        </div>
                    @elseif(session()->has('user') && session()->get('user')->name_role == 'korisnik')
                        <div class="move_right">
                            <u><h4>Korisnik:</h4></u>
                            <u><h3 style="color: darkblue;">{{session()->get('user')->user_name}}</h3></u>
                        </div>
                        <div id="ispis" class="move_right"></div>
                        <h3 class="move_right" style="color: darkblue;">Ostavite komentar</h3>
                    @else
                        <h4 class="move_right" style="color: darkblue;">Ulogujte se da ostavite komentar!</h4>
                        <hr>
                    @endif
                    @if(session()->has('user') && session()->get('user')->name_role == 'korisnik')
                        <div class="comment-form-wrap pt-5 move_right">
                            <form action="{{route('insert_comment')}}" method="post" name="commentform" class="p-5 bg-light">
                                {{csrf_field()}}
                                <input type="hidden" name="query" id="query" value="INSERT comment"/>
                                <textarea name="comment" id="comment" cols='30' rows='10'class="form-control" placeholder="Komentar..."></textarea>
                                <input type="hidden" name="news_id" id="news_id" value="{{$n->id_news}}">
                                <input type="hidden" name="user_id" id="user_id" value="{{session()->get('user')->id_user}}">
                                <br>
                                <input type="button" value="Pošalji" name="btnOstaviKomentar" id="btnOstaviKomentar" class="btn btn-primary py-3 px-5">
                            </form>
                        </div>
                        @if($errors->any())
                            <div class="alert alert-danger move_right" style="margin-top: 10px;">
                                <ul>
                                @foreach($errors->all() as $error)
                                    <li>{{$error}}</li>
                                @endforeach
                                </ul>
                            </div>
                        @endif
                    </div>
                    @endif
                <div class="comment-form-wrap pt-5">
                    <div id="ispisKomentar">
                        @isset($comment)
                            <h3 class="move_right">Komentari:</h3>
                            @foreach($comment as $c)
                                <hr>
                            <div class="move_right">
                                <h4 style="color: darkblue;">Korisnicko ime:  {{$c->user_name}}</h4>
                                {{$c->text_comment}}
                                <hr>
                            </div>
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    @endif
@endsection