@extends('layout.index')

@section('title')
    Home
@endsection

@section('sidebar')
    <div class="container">
        <div class="row">

            <div class="col-md-3" style="">
                <p class="lead" style="color:darkblue;font-weight: bolder;">TopNews</p>
                <div class="list-group" style="width:100px;height: 100%;">


                    <nav class="navbar navbar-light bg-light" >
                        <ul class="nav" style="list-style:none;font-size:20px;">

                            @isset($kategorije)
                                @foreach($kategorije as $kategorija)
                                    <li ><a href="{{route('category',['id_category'=>$kategorija->id_category])}}" class="nav-brand" style="display: block;width:120px;color:#000;">{{$kategorija->name_category}}</a></li>
                                @endforeach
                            @endif
                        </ul>
                    </nav>
                </div>
@endsection

@section('search')
    <div class="search" >
        <form class="form-inline" >
            {{csrf_field()}}
            <input class="form-control mr-sm-2" type="search" name="search" id="search" placeholder="Search" aria-label="Search" style="border:1px solid dimgray;">
            <button class="btn btn-outline-success msearchy-2 my-sm-0" type="button" id="btnSearch" name="btnSearch" style="background-color:darkgray;border:1px solid dimgray;`">Search</button>
        </form>
    </div>
            </div>
@endsection

@section('content')
    <div class="col-md-9" style="padding-bottom: 50px;">
        <div class="row carousel-holder" style="background-color: lightblue;" >
            <div class="col-md-12">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        @isset($news)
                            @foreach($news as $n)
                                    @php $class = $loop->first ? 'item active': 'item' @endphp
                        <div class="{{$class}}" style="background-color:lightblue;">

                            <img class="slide-image" src="{{asset('/').$n->picture_path}}" alt="{{$n->title_news}}" style="padding-top:10px;"/>

                            <h5><b><a href="{{route('showOne').'/'.$n->id_news}}" style="color:#000;a:hover:#f2a29f;/*width:100%;margin:0px auto;text-align:center;*/">{{$n->title_news}}</a></b></h5>
                        </div>
                            @endforeach
                        @endif
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev" >
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
    </div>

    <div class="row">
        <div id="ispis">
            @if(isset($news))
                <div id="news" style="text-align: center;">
                    {{$news->links()}}
                </div>
                @foreach($news as $n)
                <div class="col-sm-4 col-lg-4 col-md-4" style="height:450px;text-overflow: ellipsis;">
                    <div class="thumbnail" style="padding-top: 0px;">
                        <img src="{{asset('/').$n->picture_path}}" class="img-fluid" style="weight:150px;height:150px;" alt="{{$n->title_news}}"/></br></br>
                        <div class="caption" style="padding-top: 0px;">
                            <h5><b><a href="{{route('showOne',['id_news'=>$n->id_news])}}" style="color: darkblue;">{{$n->title_news}}</a></b>
                            </h5>
                            <p>
                                {{$truncated = Str::limit($n->text_news, 200, ' (...)')}}
                            </p>
                        </div>
                        <div class="ratings">
                            <p>
                                <a href="{{route('category',['id_category'=>$n->category_id])}}" style="color:darkblue;">{{$n->name_category}}</a>
                            </p>
                            <p>
                               <b><a href="{{route('showOne',['id_news'=>$n->id_news])}}" style="color:#000;">Više</a></b>
                            </p>
                            <p>
                                <b>{{date("d.m.Y H:i:s",$n->posted_date)}}</b>
                            </p>
                        </div>
                    </div>
                </div>
                @endforeach
            @endif
        </div>
    </div>
    </div>
    </div>
@endsection
