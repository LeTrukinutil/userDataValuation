<?php

use App\Http\Controllers\CommentsController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\CompanySearchController;
use App\Http\Controllers\CsvController;
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
        return view('company.research');
    })->name('dashboard');
    Route::get('/company/{siren}', [CompanyController::class, 'show'])->name('company.show');
    Route::post('/company/{siren}/comments', [CommentsController::class, 'store'])->name('comment.store');
    Route::get('/csv-upload', [CsvController::class, 'show'])->name('csv.upload');
    Route::post('/csv-upload', [CsvController::class, 'dataCompletion'])->name('csv.process');

});

require __DIR__.'/auth.php';
