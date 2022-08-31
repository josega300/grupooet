<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\VehiculoController;
use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\RegistroController;
use App\Http\Controllers\AutoCompleteController;
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

/*Route::get('/tareas', function () {
    return view('welcome');
});*/

/*Route::get('/sesiones', function () {
    return view('sesiones');
});*/
Route::get('/', function () {
    return view('auth.login');
});

/*
Route::get('profile', function () {
    // Only verified users may enter...
})->middleware('verified');*/


Auth::routes();
//Auth::routes(['verify' => true]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
//Route::post('/login-two-factor/{user}', 'App\Http\Controllers\Auth\LoginController@login2FA')->name('login.2fa');
//Auth::routes();

Route::post('/login-two-factor/{user}', [App\Http\Controllers\Auth\LoginController::class, 'login2FA'])->name('login.2fa');


Route::resource('/vehiculos', VehiculoController::class)->middleware('auth');
Route::resource('/usuarios', UsuarioController::class)->middleware('auth');
Route::resource('/registros', RegistroController::class)->middleware('auth');

Route::get('search', [AutoCompleteController::class, 'index']);
Route::get('autocompleteVehiculo', [AutoCompleteController::class, 'searchVehiculo']);
Route::get('autocompleteUsuario', [AutoCompleteController::class, 'searchUsuario']);