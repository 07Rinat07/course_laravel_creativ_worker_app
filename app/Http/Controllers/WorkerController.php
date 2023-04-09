<?php

namespace App\Http\Controllers;

use App\Http\Requests\Worker\StoreRequest;
use App\Http\Requests\Worker\UpdateRequest;
use App\Models\Worker;
use Illuminate\Http\Request;

class WorkerController extends Controller
{
    public function index()
    {
        $workers = Worker::all ();

        return view ('worker.index', compact ('workers'));
    }

    public function show(Worker $worker)
    {
       return view ('worker.show', compact ('worker'));
    }

    public function create()
    {
       return view ('worker.create');
    }

    public function store(StoreRequest $request)
    {
       $data = $request->validated();

       $data['is_married'] = isset($data['is_married']);

       Worker::create($data);
       return redirect ()->route ('worker.index');
    }


    public function edit(Worker $worker)
    {
        return view ('worker.edit', compact ('worker'));
    }

    public function update(UpdateRequest $request, Worker $worker)
    {
      $data = $request->validated();
      $data['is_married'] = isset($data['is_married']);

      $worker->update ($data);

        return redirect ()->route ('worker.show', $worker->id);
    }

    public function delete(Worker $worker)
    {
      $worker->delete ();
      return redirect ()->route ('worker.index');
    }
}
