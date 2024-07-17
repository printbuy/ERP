<?php

declare(strict_types=1);

use Illuminate\Support\Facades\Route;
use Stancl\Tenancy\Middleware\InitializeTenancyByDomain;
use Stancl\Tenancy\Middleware\InitializeTenancyBySubdomain;
use Stancl\Tenancy\Middleware\InitializeTenancyByDomainOrSubdomain;
use Stancl\Tenancy\Middleware\PreventAccessFromCentralDomains;

use InvoiceShelf\Http\Controllers\V1\Admin\Auth\LoginController;


/*
|--------------------------------------------------------------------------
| Tenant Routes
|--------------------------------------------------------------------------
|
| Here you can register the tenant routes for your application.
| These routes are loaded by the TenantRouteServiceProvider.
|
| Feel free to customize them however you want. Good luck!
|
*/



Route::middleware([
    'web',
    InitializeTenancyByDomain::class,
    PreventAccessFromCentralDomains::class,

])->group(function () {

    // Route::post('login', [LoginController::class, 'login']);

    // Route::post('auth/logout', function () {
    //     Auth::guard('web')->logout();
    // });

    // Route::get('/admin/{vue?}', function () {
    //     // $currentDb = DB::connection()->getDatabaseName();
    //     // dd($currentDb);
    //     // DB::reconnect('tenant');
    //     // DB::setDefaultConnection('tenant');
    //     //dd(DB::connection()->table('items')->get());
    //     return view('app');
    // })->where('vue', '[\/\w\.-]*')->name('admin.dashboard');


    // Route::get('/', function () {
    //     //DB::setDefaultConnection('tenant');
    //     return view('app');
    // })->where('vue', '[\/\w\.-]*')->name('home')->middleware(['install', 'guest']);


    // Route::get('/login', function () {
    //     // DB::reconnect('tenant');
    //     // DB::setDefaultConnection('tenant');
    //     // $currentDb = DB::connection()->getDatabaseName();
    //     // dd($currentDb);
    //     return view('app');
    // })->where('vue', '[\/\w\.-]*')->name('login');




    Route::get('/test', function () {
        //dd(tenant());
        // $currentDb = DB::connection()->getDatabaseName();
        // dd($currentDb);
        return 'This is your multi-tenant application. The id of the current tenant  is ' . tenant('id') . ' / ' . DB::connection()->getDatabaseName();
    });
});
