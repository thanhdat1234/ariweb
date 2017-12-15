@extends('dom')
@section('title','dom make by nguyen dat')
@section('content')
    <div class="container">
        <div class="row">
            <form class="form-inline" method="POST" action="{{route('html.test.post')}}">
                <input type="text" hidden name="_token" value="{{ csrf_token() }}">
                <div class="form-group">
                    <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
                    <div class="input-group">
                        <div class="input-group-addon">$</div>
                        <input type="text" class="form-control" id="exampleInputAmount" name="url" placeholder="Amount">
                        <div class="input-group-addon">.00</div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Transfer cash</button>
            </form>
        </div>
    </div>
@endsection