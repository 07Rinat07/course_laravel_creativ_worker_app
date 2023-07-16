<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\Worker\StoreRequest;
use App\Http\Resources\WorkerResource;
use App\Models\Worker;
use Illuminate\Http\Request;

class WorkerController extends Controller
{
    public function index()
    {
        $workers = Worker::all();

        return
            WorkerResource::collection($workers)->resolve();
        //если надо при получении апи что была data то удали ->resolve()
    }

    public function show(Worker $worker)
    {
        return WorkerResource::make($worker)->resolve();
        //если надо что бы data то удали ->resolve()
    }

    public function store(StoreRequest $request)
    {
        $data = $request->validated();
        $worker = Worker::create($data);
        return WorkerResource::make($worker)->resolve();
    }

    public function update(Worker $worker, StoreRequest $request)
    {
        $data = $request->validated();
        $worker->update($data);
       // $worker->fresh();
        return WorkerResource::make($worker)->resolve();
    }

    public function destroy(Worker $worker)
    {
        $worker->delete();
        return response()->json([
            'message' => 'worker was deleted'
        ]);
    }
}
