<?php

namespace InvoiceShelf\Http\Controllers;

use Illuminate\Http\Request;
use InvoiceShelf\Models\Tenant;



class TenantController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    protected $user;
    protected $company_id;


    public function __construct()
    {
        //dd('POPOPOP');
    }

    public function index()
    {
        //dd('aqui');
        return view('tenant');
    }



    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $tenant = new Tenant();
        $tenant->id = $request->id;
        $tenant->plan = $request->plan;
        $tenant->save();

        $tenant->domains()->create(['domain' => $request->id . '.localhost']);

        return redirect('http://' . $request->id . '.localhost');
    }
}
