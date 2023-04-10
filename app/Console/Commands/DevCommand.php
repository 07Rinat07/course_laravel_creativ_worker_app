<?php

namespace App\Console\Commands;

use App\Models\Position;
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
//        $this->prepareData ();

      $worker = Worker::find(1);
      $position = Position::find(1);
      dd ($position->workers->toArray());



        return 0;
    }


    private function prepareData()
    {
        $position1 = Position::create([
            'title' => 'Developer',
        ]);
        $position2 = Position::create([
            'title' => 'Manager',
        ]);



        $workerData1 = [
            'name' => 'Ivan',
            'surname' => 'Ivanov',
            'email' => 'ivanov@mai.ru',
            'position_id' => $position1->id,
            'age' => 20,
            'description' => 'Some description',
            'is_married' => false,
        ];

        $workerData2 = [
            'name' => 'Karl',
            'surname' => 'Petrov',
            'email' => 'karlpetrov@mai.ru',
            'position_id' => $position2->id,
            'age' => 50,
            'description' => 'Some description',
            'is_married' => true,
        ];

        $workerData3 = [
            'name' => 'Katya',
            'surname' => 'Gazyeva',
            'email' => 'sssa@mai.ru',
            'position_id' => $position1->id,
            'age' => 41,
            'description' => 'Some description',
            'is_married' => false,
        ];

        $worker1 = Worker::create ($workerData1);
        $worker2 = Worker::create ($workerData2);
        $worker3 = Worker::create ($workerData3);

        $profileData1 = [
            'worker_id' => $worker1->id,
            'city' => 'Tokio',
            'skill' => 'Backend developer',
            'experience' => 5,
            'finished_study_at' => '2020-06-01',
        ];
        $profileData2 = [
            'worker_id' => $worker2->id,
            'city' => 'RIO',
            'skill' => 'frontend developer',
            'experience' => 4,
            'finished_study_at' => '2019-06-01',
        ];

        $profileData3 = [
            'worker_id' => $worker3->id,
            'city' => 'Berlin',
            'skill' => 'developer',
            'experience' => 2,
            'finished_study_at' => '2021-06-01',
        ];

        Profile::create ($profileData1);
        Profile::create ($profileData2);
        Profile::create ($profileData3);

        //dd ($profile->id);
    }
}
