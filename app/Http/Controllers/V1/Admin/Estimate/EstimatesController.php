<?php

namespace InvoiceShelf\Http\Controllers\V1\Admin\Estimate;

use Illuminate\Http\Request;
use InvoiceShelf\Http\Controllers\Controller;
use InvoiceShelf\Http\Requests\DeleteEstimatesRequest;
use InvoiceShelf\Http\Requests\EstimatesRequest;
use InvoiceShelf\Http\Resources\EstimateResource;
use InvoiceShelf\Jobs\GenerateEstimatePdfJob;
use InvoiceShelf\Models\Estimate;

class EstimatesController extends Controller
{
    public function index(Request $request)
    {
        $this->authorize('viewAny', Estimate::class);

        $limit = $request->has('limit') ? $request->limit : 10;

        $estimates = Estimate::whereCompany()
            ->join('customers', 'customers.id', '=', 'estimates.customer_id')
            ->applyFilters($request->all())
            ->select('estimates.*', 'customers.name')
            ->latest()
            ->paginateData($limit);

        return EstimateResource::collection($estimates)
            ->additional(['meta' => [
                'estimate_total_count' => Estimate::whereCompany()->count(),
            ]]);
    }

    public function store(EstimatesRequest $request)
    {
        $this->authorize('create', Estimate::class);

        $estimate = Estimate::createEstimate($request);

        if ($request->has('estimateSend')) {
            $estimate->send($request->title, $request->body);
        }

        GenerateEstimatePdfJob::dispatch($estimate);

        return new EstimateResource($estimate);
    }

    public function show(Request $request, Estimate $estimate)
    {
        $this->authorize('view', $estimate);

        return new EstimateResource($estimate);
    }

    public function update(EstimatesRequest $request, Estimate $estimate)
    {
        $this->authorize('update', $estimate);

        $estimate = $estimate->updateEstimate($request);

        GenerateEstimatePdfJob::dispatch($estimate, true);

        return new EstimateResource($estimate);
    }

    public function delete(DeleteEstimatesRequest $request)
    {
        $this->authorize('delete multiple estimates');

        Estimate::destroy($request->ids);

        return response()->json([
            'success' => true,
        ]);
    }
}
