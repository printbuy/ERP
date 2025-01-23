<?php

namespace InvoiceShelf\Http\Controllers\V1\Admin\Tenant;

use Illuminate\Http\Request;
use InvoiceShelf\Http\Controllers\Controller;
use InvoiceShelf\Http\Requests;
use InvoiceShelf\Http\Requests\DeleteTenantsRequest;
use InvoiceShelf\Http\Resources\TenantResource;
use InvoiceShelf\Models\Tenant;
use InvoiceShelf\Models\TaxType;

class TenantsController extends Controller
{
    /**
     * Retrieve a list of existing Tenants.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
        $this->authorize('viewAny', Tenant::class);

        $limit = $request->has('limit') ? $request->limit : 10;

        $tenants = Tenant::whereCompany()
            ->leftJoin('units', 'units.id', '=', 'tenants.unit_id')
            ->applyFilters($request->all())
            ->select('tenants.*', 'units.name as unit_name')
            ->latest()
            ->paginateData($limit);

        return TenantResource::collection($tenants)
            ->additional(['meta' => [
                'tax_types' => TaxType::whereCompany()->latest()->get(),
                'tenant_total_count' => Tenant::whereCompany()->count(),
            ]]);
    }

    /**
     * Create Tenant.
     *
     * @param  InvoiceShelf\Http\Requests\TenantsRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Requests\TenantsRequest $request)
    {
        $this->authorize('create', Tenant::class);

        $tenant = Tenant::createTenant($request);

        return new TenantResource($tenant);
    }

    /**
     * get an existing Tenant.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(Tenant $tenant)
    {
        $this->authorize('view', $tenant);

        return new TenantResource($tenant);
    }

    /**
     * Update an existing Tenant.
     *
     * @param  InvoiceShelf\Http\Requests\TenantsRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Requests\TenantsRequest $request, Tenant $tenant)
    {
        $this->authorize('update', $tenant);

        $tenant = $tenant->updateTenant($request);

        return new TenantResource($tenant);
    }

    /**
     * Delete a list of existing Tenants.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function delete(DeleteTenantsRequest $request)
    {
        $this->authorize('delete multiple tenants');

        Tenant::destroy($request->ids);

        return response()->json([
            'success' => true,
        ]);
    }
}
