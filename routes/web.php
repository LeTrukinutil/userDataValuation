<?php

use App\Http\Controllers\CompanyController;
use App\Http\Controllers\CompanySearchController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;



Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified']);

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::get('/search', [CompanyController::class, 'search'])->name('search');
    Route::get('/', function(){
        return view('research');
    })->name('dashboard');
    Route::get('/company/{siren}', [CompanyController::class, 'show'])->name('company.show');
});

require __DIR__.'/auth.php';
