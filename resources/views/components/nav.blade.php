<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background:lightblue">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{{route('index')}}" style="font-weight:bold;color: darkblue;">TopNews</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            @if(session()->has('user') && session()->get('user')->name_role == 'admin')

                <ul class="nav navbar-nav" >
                        <!--ZA ADMINA-->
                        <li>
                            <a href="{{route('adminCategory')}}" style="color: black">Kategorije</a>
                        </li>
                        <li>
                            <a href="{{route('adminUsers')}}" style="color: black">Korisnici</a>
                        </li>
                        <li>
                            <a href="{{route('adminRoles')}}" style="color: black">Uloge</a>
                        </li>
                        <li>
                            <a href="{{route('adminNews')}}" style="color: black">Vesti</a>
                        </li>
                        <li>
                            <a href="{{route('adminComments')}}" style="color: black">Komentari</a>
                        </li>
                        <li>
                            <a href="{{route('admin_contactForm')}}" style="color: black">Poruke administratoru</a>
                        </li>
                        <li>
                            <a href="{{route('activity')}}" style="color: black">Aktivnosti</a>
                        </li>
                        <li>
                            <a href="{{route('logout')}}" style="color: black">Logout</a>
                        </li>
                </ul>
            @elseif (session()->has('user') && session()->get('user')->name_role == 'korisnik')

                <ul class="nav navbar-nav" >
                    <li>
                        <a href="{{route('index')}}" style="color: black">Pocetna</a>
                    </li>
                    <li>
                        <a href="{{route('galerija')}}" style="color: black">Galerija</a>
                    </li>
                    <li>
                        <a href="{{route('showKorisnik',['id_user'=>session()->get('user')->id_user])}}" style="color: black">Korisnik</a>
                    </li>
                    <li>
                        <a href="{{route('logout')}}" style="color: black">Logout</a>
                    </li>
                </ul>
            @else
                <ul class="nav navbar-nav" >
                    <li>
                        <a href="{{route('index')}}" style="color: black">Pocetna</a>
                    </li>
                    <li>
                        <a href="{{route('regForma')}}" style="color: black">Registracija</a>
                    </li>
                    <li>
                        <a href="{{route('loginForma')}}" style="color: black">Logovanje</a>
                    </li>

                    <li>
                        <a href="{{route('kontakt')}}" style="color: black">Kontakt</a>
                    </li>
                    <li>
                        <a href="{{route('author')}}" style="color: black">Autor</a>
                    </li>
                    <li>
                        <a href="{{asset('/')}}js/DokumentacijaTopNews.pdf" style="color: black">Dokumentacija</a>
                    </li>
                </ul>
            @endif
        </div>
    </div>
</nav>
