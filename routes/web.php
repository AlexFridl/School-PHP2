<?php

use \App\Http\Controllers\FrontendController;
use \App\Http\Controllers\AuthController;
use \App\Http\Controllers\KorisnikController;
use \App\Http\Controllers\BackendController;
use \App\Http\Controllers\CategoryController;
use \App\Http\Controllers\NewsController;
use \App\Http\Controllers\UserController;
use \App\Http\Controllers\RoleController;
use \App\Http\Controllers\CommentController;


    Route::get('/', [FrontendController::class, 'index'])->name('index');

    Route::get('/category/{id}', [FrontendController::class, 'category'])->name('category');

    Route::get('/news/{id?}', [FrontendController::class, 'showOne'])->name('showOne');

    Route::get('/galerija', [FrontendController::class, 'galerija'])->name('galerija');

    Route::get('/kontakt', [FrontendController::class, 'kontakt'])->name('kontakt');
    Route::post('/kontakt', [FrontendController::class, 'doKontakt'])->name('doKontakt');

    Route::get('/registracija', [AuthController::class, 'registracija'])->name('regForma');
    Route::post('/registracija', [AuthController::class, 'doReg'])->name('doReg');

    Route::get('/logovanje', [AuthController::class, 'logovanje'])->name('loginForma');
    Route::post('/doLogovanje', [AuthController::class, 'doLog'])->name('doLogin');
    Route::get('/logout', [AuthController::class, 'logout'])->name('logout');

    Route::get('/author', [FrontendController::class, 'showAuthor'])->name('author');


//KorisnikMiddleware
Route::group(['middleware'=>'korisnik'],function(){
    Route::get('/galerija',[FrontendController::class,'galerija'])->name('galerija');
    Route::get('/korisnik/{id_user}',[KorisnikController::class,'showKorisnik'])->name('showKorisnik');
    Route::post('/korisnik/{id_user}',[KorisnikController::class,'changeUserData'])->name('changeUserData');

    Route::post('/ajax/insert_comment',[KorisnikController::class,'insert_comment'])->name('insert_comment');
});

//AdminMiddleware
Route :: group(['middleware'=>'admin'],function (){

    Route::get('/adminCategory',[CategoryController::class,'adminCategory'])->name('adminCategory'); //CATEGORY
    Route::get('/adminNews',[NewsController::class,'adminNews'])->name('adminNews');         //NEWS
    Route::get('/adminUsers',[UserController::class,'adminUsers'])->name('adminUsers');      //USER
    Route::get('/adminRoles',[RoleController::class,'adminRoles'])->name('adminRoles');      //ROLE

    Route::get('/adminComments',[CommentController::class,'adminComments'])->name('adminComments');     //COMMENT
    Route::get('/admin_contactForm',[BackendController::class,'admin_contactForm'])->name('admin_contactForm');     //BACKEND
    Route::get('/activity',[BackendController::class,'activity'])->name('activity');                                //BACKEND
    Route::get('/admin_contactForm',[BackendController::class,'admin_contactForm'])->name('admin_contactForm');     //BACKEND

        //insert
    Route::get('/adminCategory_insert',[CategoryController::class,'adminCategory_insert'])->name('adminCategory_insert');    //CATEGORY

    Route::get('/adminNews_insert',[NewsController::class,'adminNews_insert'])->name('adminNews_insert');                //NEWS
    Route::post('/adminNews_insert',[NewsController::class,'doAdminNews_insert'])->name('doAdminNews_insert');           //NEWS

    Route::get('/adminUsers_insert',[UserController::class,'adminUsers_insert'])->name('adminUsers_insert');             //USER
    Route::post('/adminUsers_insert',[UserController::class,'doAdminUsers_insert'])->name('doAdminUsers_insert');        //USER

    Route::get('/adminRoles_insert',[RoleController::class,'adminRoles_insert'])->name('adminRoles_insert');             //ROLE
    Route::post('/adminRoles_insert',[RoleController::class,'doAdminRoles_insert'])->name('doAdminRoles_insert');        //ROLE

        //update
    Route::get('/adminCategory_update/{id_category}',[CategoryController::class,'adminCategory_update'])->name('adminCategory_update');  //CATEGORY
    Route::post('/adminCategory_update/{id_category}',[CategoryController::class,'doAdminCategory_update'])->name('doAdminCategory_update'); //CATEGORY

    Route::get('/adminUsers_update/{id_user}',[UserController::class,'adminUsers_update'])->name('adminUsers_update');               //USER
    Route::post('/adminUsers_update/{id_user}',[UserController::class,'doAdminUsers_update'])->name('doAdminUsers_update');          //USER

    Route::get('/adminRoles_update/{id_role}',[RoleController::class,'adminRoles_update'])->name('adminRoles_update');               //ROLE
    Route::post('/adminRoles_update/{id_role}',[RoleController::class,'doAdminRoles_update'])->name('doAdminRoles_update');          //ROLE

    Route::get('/adminNews_update/{id_news}',[NewsController::class,'adminNews_update'])->name('adminNews_update');                  //NEWS
    Route::post('/adminNews_update/{id_news}',[NewsController::class,'doAdminNews_update'])->name('doAdminNews_update');             //NEWS

    //delete
    Route::get('/adminCategory_delete/{id_category}',[CategoryController::class,'adminCategory_delete'])->name('adminCategory_delete');  //CATEGORY
    Route::get('/adminRoles_delete/{id_role}',[RoleController::class,'adminRoles_delete'])->name('adminRoles_delete');               //ROLE
    Route::get('/adminUsers_delete/{id_user}',[UserController::class,'adminUsers_delete'])->name('adminUsers_delete');               //USER
    Route::get('/adminNews_delete/{id_news}',[NewsController::class,'adminNews_delete'])->name('adminNews_delete');                  //NEWS
    Route::get('/adminComments_delete/{id_comment}',[CommentController::class,'adminComments_delete'])->name('adminComments_delete');   //COMMENT
    Route::get('/adminContactForm_delete/{id_contact}',[BackendController::class,'adminContactForm_delete'])->name('adminContactForm_delete');

    Route::post('/ajax/adminSearch',[BackendController::class,'adminSearch'])->name('adminSearch');
    Route::post('/ajax/adminSortByDate',[BackendController::class,'sortByDate'])->name('sortByDate');
});

//AJAX

Route::group(['prefix'=>'/ajax'],function(){
  Route::post('/adminCategory_insert',[CategoryController::class,'doAdminCategory_insert'])->name('doAdminCategory_insert');         //CATEGORY
  Route::post('/search',[FrontendController::class,'search'])->name('search');

});
