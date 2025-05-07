<?php

use App\Http\Controllers\CommentsController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\CompanySearchController;
use App\Http\Controllers\CsvController;
use App\Http\Controllers\favouriteCompController;
use App\Http\Controllers\ProfileController;
use App\Models\SearchHistory;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified']);

Route::middleware('auth')->group(function () {
    // Profile routes
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    // Company routes
    Route::get('/search', [CompanyController::class, 'search'])->name('search');
    Route::get(
        '/',
        function () {
            $searchHistory = SearchHistory::where('user_id', Auth::id())->orderBy('searched_at', 'desc')->get();
            return view('company.research', compact('searchHistory'));
        }
    )->name('dashboard');

    Route::post('/search-history/{id}/delete', [CompanyController::class, 'deleteSearchHistory'])->name('search-history.delete');

    Route::get('/company/{siren}', [CompanyController::class, 'show'])->name('company.show');
    Route::post('/company/{siren}/comments', [CommentsController::class, 'store'])->name('comment.store');

    Route::post('/company/{siren}/favourites', [favouriteCompController::class, 'toggleToFavourites'])->name('company.favourites');
    Route::get('/favourites', [favouriteCompController::class, 'favourites'])->name('favourites.index');

    // CSV routes
    Route::get('/csv-upload', [CsvController::class, 'show'])->name('csv.upload');
    Route::post('/csv-upload', [CsvController::class, 'dataCompletion'])->name('csv.process');

    // Logout route
    Route::get('/logout', function () {
        Auth::logout();
        return redirect('/');
    })->name('logout');
});

require __DIR__ . '/auth.php';
