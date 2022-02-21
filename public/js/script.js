$(document).ready(function () {

//Search na pocetnoj strani
    $('#btnSearch').click(function () {

        $unos = $('input[name="search"]').val();
        $ispis = $('#ispis');
        //console.log($unos);
        $.ajax({
            url: baseUrl + '/ajax/search',
            type: 'POST',
            data: {unos: $unos, _token: token},
            dataType: 'json',
            success: function (data, xhr) {
                //console.log(data);
                //console.log(xhr);
                $ispis.html('');
                $ispis.html(data);
                //$ispis.html(showNews(data));
            },
            error: function (xhr, status, error) {
                console.log("Greska");
                //console.log(xhr);
                //console.log(status);
                //console.log(error);
            }
        });
    });
//Search na admin strani
    $('#btnAdminSearch').click(function () {
        $unos = $('input[name="search"]').val();
        $ispis = $('#ispis');
        $ispis2 = $('#news');
        //console.log($unos);

        $.ajax({
            url: baseUrl + '/ajax/adminSearch',
            type: 'POST',
            data: {unos: $unos, _token: token},
            dataType: 'json',
            success: function (data, xhr) {
                // console.log(data);
                // console.log(xhr);
                $ispis.html("");
                $ispis2.html("");
                $ispis.html(data);
            },
            error: function (xhr, status, error) {
                console.log("Greska");
                console.log(xhr);
                console.log(status);
                console.log(error);
            }
        });

    });
//AJAX insert kategorije
    $('#btnAddCategory').click(function () {
        $unos = $('input[name="name"]').val();
        $query = $('#query').val();
        $id_user = $('#id_user').val();
        $ispis = $("#ispis");
        //console.log($unos);

        $.ajax({
            url: baseUrl + '/ajax/adminCategory_insert',
            type: 'POST',
            data: {unos: $unos, query: $query, id_user: $id_user, _token: token},
            dataType: 'json',
            success: function (data, xhr) {
                // console.log(data);
                // console.log(xhr);
                $ispis.html("");
                $ispis.html(data);
                $('input[name="name"]').val("");
            },
            error: function (xhr, status, error) {
                console.log("Greska");
                console.log(xhr);
                console.log(status);
                console.log(error);
            }
        });
    });
//Filtriranje aktivnosti po datumu
    $('#sortByDate').change(function () {
        $unos = $('input[name="sortByDate"]').val();
        $ispis = $("#ispis");
        console.log($unos);

        $.ajax({
            url: baseUrl + '/ajax/adminSortByDate',
            type: 'POST',
            data: {unos: $unos, _token: token},
            dataType: 'json',
            success: function (data, xhr) {
                // console.log(data);
                // console.log(xhr);
                $ispis.html("");
                $ispis.html(data);
            },
            error: function (xhr, status, error) {
                console.log("Greska!");
                console.log(xhr);
                console.log(status);
                console.log(error);
            }
        });
    });
//AJAX insert komentara

    $('#btnOstaviKomentar').click(function () {
        $unos = $("#comment").val();
        $news_id = $("#news_id").val();
        $user_id = $("#user_id").val();
        $query = $("#query").val();
        $ispis = $("#ispis");
        $ispisKomentar = $('#ispisKomentar');
        $unos2 = $("#comment");
        //console.log($unos);

        $.ajax({
            url: baseUrl + '/ajax/insert_comment',
            type: 'POST',
            data: {unos: $unos, news_id: $news_id, user_id: $user_id, _token: token},
            dataType: 'json',
            success: function (data, xhr) {
                //console.log(data);
                //console.log(xhr);
                //$ispis.html('');
                //$ispis.html(data);
                $unos2.val("");
                $ispisKomentar.html('');
                $ispisKomentar.html(data);
            },
            error: function (xhr, status, error) {
                console.log("Greska!");
                console.log(xhr);
                console.log(status);
                console.log(error);
                $ispis.html('');
                $data = xhr.responseText;
                if (JSON.parse($data) != "") {
                    $jsonResponse = JSON.parse($data);
                    console.log($jsonResponse["errors"]['unos']);
                    //$r = xhr.parse(this.response)
                    //$ispis.html($r);
                    $ispis.html($jsonResponse["errors"]['unos']);
                }
            }
        });

    });
});