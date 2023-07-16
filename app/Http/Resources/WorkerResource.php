<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;

class WorkerResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
//        $date = '2023-07-16';
//        $date = Carbon::parse($date);
//        dd($date->year);
        return [
          'id' => $this->id,
          'name' => $this->name,
          'surname' => $this->surname,
          'age' => $this->age,
            'created_at' => $this->created_at->format('Y-m-d')
        ];
    }
}
