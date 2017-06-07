@extends("layout")
@section("content")
    <div>
        <ol class="breadcrumb">
            <li><a href="{{{URL::route('user.home')}}}">{{ trans('messages.home') }}</a></li>
            <li class="active">{{ Lang::choice('messages.report', 2) }}</li>
            <li class="active">{{ Lang::choice('messages.antibiogram-report', 2) }}</li>
        </ol>
    </div>
    <div class="container-fluid">
        <div class="form-group">
        {{ Form::open(array('url' => 'reports/antibiogram', 'class' => 'form-inline', 'method' => 'POST')) }}
            <div class="checkbox">
                <label for="all_isolates">
                    {{ Form::checkbox('all_isolates', 'true', true) }}
                    {{ trans('messages.all-isolates') }}
                </label>
            </div>

            <p><strong>{{ trans('messages.specimen-location')  }}</strong></p>
            <div class="form-pane panel panel-default">
                <div class="row">
                    @foreach($specimen_collection_location as $location)
                        <div class="col-md-2">
                            <label  class="checkbox">
                                <input type="checkbox" name="organism[]" value="{{ $location->id}}"> {{$location->name}}
                            </label>
                        </div>
                    @endforeach
                </div>
            </div>

            <p><strong>{{ trans('messages.specimen-types')  }}</strong></p>
            <div class="form-pane panel panel-default">
                <div class="row">
                    @foreach($specimen_types as $specimen_types)
                        <div class="col-md-2">
                            <label  class="checkbox">
                                <input type="checkbox" name="organism[]" value="{{ $specimen_types->id}}"> {{$specimen_types->name}}
                            </label>
                        </div>
                    @endforeach
                </div>
            </div>

            <div class="">
                {{ Form::submit('View', array('class' => 'btn btn-sm btn-info'))  }}
            </div>
        {{ Form::close()  }}
        </div>
    </div>
@stop
