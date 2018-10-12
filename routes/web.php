<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

Route::get('/', function () {
    return view('layouts.frontend');
});

// Authentication Routes...
$this->get('u-login', 'Auth\LoginController@showLoginForm')->name('login');
$this->post('u-login', 'Auth\LoginController@login');
$this->post('u-logout', 'Auth\LoginController@logout')->name('logout');

// student login
$this->get('student/login', 'Auth\StudentLoginController@showLoginForm')->name('student.login');
$this->post('student/login', 'Auth\StudentLoginController@login')->name('student.login.submit');

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix' => 'admin','middleware'=>'auth'], function () {
    Route::resource('student', 'Admin\Student\StudentsController');
    Route::get('pdf-view/{id}', 'Admin\Student\StudentsController@pdfView')->name('pdf.view');
});


//.........STUDENT
Route::group(['prefix' => 'student'], function () {
    Route::get('/dash', 'Student\StudentDashController@index')->name('student.dash');
    Route::get('pdf-download', 'Student\StudentDashController@pdfViewDownload')->name('student.pdf.download');
});
