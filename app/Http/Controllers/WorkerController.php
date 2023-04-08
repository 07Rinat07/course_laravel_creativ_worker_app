<?php

namespace App\Http\Controllers;

use App\Models\Worker;
use Illuminate\Http\Request;

class WorkerController extends Controller
{
    public function index()
    {
        $workers = Worker::all ();
      foreach ($workers as $worker) {
          dump ($worker->name);
      }
    }

    public function show()
    {
        $worker = Worker::find(2);
        dd ($worker);
    }

    public function create()
    {
        $worker = [
            'name' => 'Mark',
            'surname' => 'Markov',
            'email' => 'markov@mail.ru',
            'age' => 30,
            'description' => 'Im Mark',
            'is_married' => false,
        ];

        Worker::create($worker);

        return 'Ivan was created';
    }

    public function update()
    {
        $worker = Worker::find(2);

        $worker->update([
            'name' => 'Karl',
            'surname' => 'Petrov',
        ]);

        return 'Was updated';
    }

    public function delete()
    {
        $worker = Worker::find(2);

        $worker->delete();
        return 'Was deleted';
    }
}
