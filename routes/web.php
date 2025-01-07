<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CompanySearchController;

Route::get('/', function () {
    return view('research');
});

Route::get('/recherche', [CompanySearchController::class, 'search'])->name('search');
