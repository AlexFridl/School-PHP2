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