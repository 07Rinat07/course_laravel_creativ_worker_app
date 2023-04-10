<?php

namespace App\Console\Commands;

use App\Models\Profile;
use App\Models\Worker;
use Illuminate\Console\Command;

class DevCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'develop';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Some develops';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
       // $this->prepareData ();

       $worker = Worker::find(1);
       $profile = Profile::find(1);

       dd ($worker->profile->toArray());


        return 0;
    }


    private function prepareData()
    {
        $workerData = [
            'name' => 'Ivan',
            'surname' => 'Ivanov',
            'email' => 'ivanov@mai.ru',
            'age' => 20,
            'description' => 'Some description',
            'is_married' => false,
        ];

        $worker = Worker::create ($workerData);

        $profileData = [
            'worker_id' => $worker->id,
            'city' => 'Tokio',
            'skill' => 'Backend developer',
            'experience' => 5,
            'finished_study_at' => '2020-06-01',
        ];

        $profile = Profile::create ($profileData);

        dd ($profile->id);
    }
}
