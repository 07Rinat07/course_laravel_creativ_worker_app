@extends('layout.main')

@section('content')

<div>
    <hr>

    <div>
        <form action="{{route ('worker.update', $worker->id)}}" method="post">
            @csrf
            @method('PATCH')
            <div style="margin-bottom: 10px"><input type="text" name="name" placeholder="name" value="{{old ('name') ?? $worker->name}}">
                @error('name')
                <div>
                    {{$message}}
                </div>
                @enderror
            </div>
            <div style="margin-bottom: 10px"><input type="text" name="surname" placeholder="surname" value="{{old ('surname') ?? $worker->surname}}">
                @error('surname')
                <div>
                    {{$message}}
                </div>
                @enderror
            </div>
            <div style="margin-bottom: 10px"><input type="text" name="email" placeholder="email" value="{{ old ('email') ?? $worker->email}}">
                @error('email')
                <div>
                    {{$message}}
                </div>
                @enderror
            </div>
            <div style="margin-bottom: 10px"><input type="number" name="age" placeholder="age" value="{{old ('age') ?? $worker->age}}"></div>
            <div style="margin-bottom: 10px"><textarea name="description" placeholder="description"> {{old ('description') ?? $worker->descroption}}</textarea>
                @error('description')
                <div>
                    {{$message}}
                </div>
                @enderror
            </div>
            <div style="margin-bottom: 10px;">
                <input id="isMarried" type="checkbox" name="is_married"
                    {{$worker->is_married ? ' checked' : ''}}
                >
                <label for="isMarried">Is married</label>
                @error('is_married')
                <div>
                    {{$message}}
                </div>
                @enderror
            </div>
            <div style="margin-bottom: 10px"><input type="submit" value="Сохранить"></div>
        </form>
    </div>

</div>

@endsection
