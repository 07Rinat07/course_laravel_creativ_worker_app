<?php

namespace App\Console\Commands;

use App\Models\Avatar;
use App\Models\Client;
use App\Models\Department;
use App\Models\Position;
use App\Models\Project;
use App\Models\Review;
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
//        $this->prepareData();
//        $this->prepareManyToMany();


        $worker = Worker::find(5);
        $client = Client::find(2);

        $worker->reviews()->create([
           'body' => 'body 1'
        ]);
        $worker->reviews()->create([
            'body' => 'body 2'
        ]);
        $worker->reviews()->create([
            'body' => 'body 3'
        ]);


        $client->reviews()->create([
            'body' => 'body 1'
        ]);
        $client->reviews()->create([
            'body' => 'body 2'
        ]);
        $client->reviews()->create([
            'body' => 'body 3'
        ]);


        $review = Review::find(2);
        dd($review->reviewable->toArray());
//
//        $avatar = Avatar::find(2);
//        dd($avatar->avatarable->toArray());


//        $worker->avatar()->create([
//            'path' => 'some path'
//        ]);
//       $client->avatar()->create([
//          'path' => 'client path'
//       ]);
       return 0;
    }


    private function prepareData()
    {
        Client::create([
           'name' => 'Bob'
        ]);
        Client::create([
            'name' => 'John'
        ]);
        Client::create([
            'name' => 'Elena'
        ]);

        $department1 = Department::create([
           'title' => 'IT'
        ]);
        $department2 = Department::create([
            'title' => 'Analitics'
        ]);


        $position1 = Position::create([
            'title' => 'Developer',
            'department_id' => $department1->id
        ]);
        $position2 = Position::create([
            'title' => 'Manager',
            'department_id' => $department1->id
        ]);
        $position3 = Position::create([
            'title' => 'Designer',
            'department_id' => $department1->id
        ]);
        $position4 = Position::create([
            'title' => 'Boss',
            'department_id' => $department1->id
        ]);
        $position5 = Position::create([
            'title' => 'Designer',
            'department_id' => $department2->id
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

        $workerData4 = [
            'name' => 'Alina',
            'surname' => 'Amirova',
            'email' => 'alina@mai.ru',
            'position_id' => $position3->id,
            'age' => 21,
            'description' => 'Some description',
            'is_married' => false,
        ];

        $workerData5 = [
            'name' => 'Karina',
            'surname' => 'Darts',
            'email' => 'karina@mai.ru',
            'position_id' => $position3->id,
            'age' => 19,
            'description' => 'Some description',
            'is_married' => false,
        ];
        $workerData6 = [
            'name' => 'Alex',
            'surname' => 'Karimaev',
            'email' => 'alex@mai.ru',
            'position_id' => $position1->id,
            'age' => 48,
            'description' => 'Some description',
            'is_married' => true,
        ];
        $workerData7 = [
            'name' => 'Anna',
            'surname' => 'Popova',
            'email' => 'anna@mai.ru',
            'position_id' => $position4->id,
            'age' => 35,
            'description' => 'Step by step',
            'is_married' => false,
        ];

        $worker1 = Worker::create($workerData1);
        $worker2 = Worker::create($workerData2);
        $worker3 = Worker::create($workerData3);
        $worker4 = Worker::create($workerData4);
        $worker5 = Worker::create($workerData5);
        $worker6 = Worker::create($workerData6);
        $worker7 = Worker::create($workerData7);

        $profileData1 = [

            'city' => 'Tokio',
            'skill' => 'Backend developer',
            'experience' => 5,
            'finished_study_at' => '2020-06-01',
        ];
        $profileData2 = [

            'city' => 'RIO',
            'skill' => 'frontend developer',
            'experience' => 4,
            'finished_study_at' => '2019-06-01',
        ];

        $profileData3 = [

            'city' => 'Berlin',
            'skill' => 'developer',
            'experience' => 2,
            'finished_study_at' => '2021-06-01',
        ];
        $profileData4 = [

            'city' => 'Oslo',
            'skill' => 'Disigned',
            'experience' => 2,
            'finished_study_at' => '2021-06-01',
        ];
        $profileData5 = [

            'city' => 'Almaty',
            'skill' => 'Designer',
            'experience' => 1,
            'finished_study_at' => '2022-06-01',
        ];
        $profileData6 = [

            'city' => 'New York',
            'skill' => 'backend',
            'experience' => 10,
            'finished_study_at' => '2013-06-01',
        ];
        $profileData7 = [

            'city' => 'Moscov',
            'skill' => 'Boss-team lead-PM',
            'experience' => 12,
            'finished_study_at' => '2011-06-01',
        ];
        $worker1->profile()->create($profileData1);
        $worker2->profile()->create($profileData2);
        $worker3->profile()->create($profileData3);
        $worker4->profile()->create($profileData4);
        $worker5->profile()->create($profileData5);
        $worker6->profile()->create($profileData6);
        $worker7->profile()->create($profileData7);
    }

    private function prepareManyToMany()
    {
        $workerManager = Worker::find(2);
        $workerManager1 = Worker::find(7);
        $workerBackend = Worker::find(1);

        $workerDesigner1 = Worker::find(5);
        $workerDesigner2 = Worker::find(6);
        $workerFrontEnd1 = Worker::find(4);
        $workerFrontEnd2 = Worker::find(3);


        $project1 = Project::create([
            'title' => 'Shop'
        ]);
        $project2 = Project::create([
            'title' => 'Blog'
        ]);

        $project1->workers()->attach([
            $workerManager->id,
            $workerBackend->id,
            $workerDesigner1->id,
            $workerFrontEnd1->id,
        ]);
        $project2->workers()->attach([
            $workerManager->id,
            $workerBackend->id,
            $workerDesigner2->id,
            $workerFrontEnd2->id,
        ]);


    }
}
