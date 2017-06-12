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
            {{ Form::open(array('url' => '/antibiogram', 'class' => 'form-inline', 'method' => 'POST')) }}
            <div class="checkbox">
                <label for="all_isolates">
                    {{ Form::checkbox('all_isolates', 'true', $all_isolates) }}
                    {{ trans('messages.all-isolates') }}
                </label>
            </div>

            <p><strong>{{ trans('messages.specimen-location')  }}</strong></p>
            <div class="form-pane panel panel-default">
                <div class="row">
                    @foreach($specimen_collection_location as $location)
                        <div class="col-md-2">
                            <label  class="checkbox">
                                <input type="checkbox" name="location[]" value="{{ $location->id}}"> {{$location->name}}
                            </label>
                        </div>
                    @endforeach
                </div>
            </div>

            <p><strong>{{ trans('messages.specimen-types')  }}</strong></p>
            <div class="form-pane panel panel-default">
                <div class="row">
                    @foreach($specimen_types as $specimen_type)
                        <div class="col-md-2">
                            <label  class="checkbox">
                                <input type="checkbox" name="specimen_type[]" value="{{ $specimen_type->id}}"> {{$specimen_type->name}}
                            </label>
                        </div>
                    @endforeach
                </div>
            </div>

            <div class="">
                {{ Form::submit('View', array('class' => 'btn btn-sm btn-info'))  }}
               @if($all_isolates) 
                   {{ Form::submit(trans('export-to-excel'), array('class' => 'btn btn-success col-md-offset-10', 'id' => 'excel', 'name' => 'excel')) }}
               @endif
            </div>
            {{ Form::close()  }}
        </div>
    </div>
    @if($all_isolates)
    <div class="panel panel-primary" id="antibiogramReport">
        <div class="panel-heading ">
            <span class="glyphicon glyphicon-user"></span>
            {{ trans('messages.patient-report') }}
        </div>

        <div class="panel-body">
            @if($error!='')
                <!-- if there are search errors, they will show here -->
                <div class="alert alert-info">{{ $error }}</div>
            @else
                <div id="report_content">
                    @include("reportHeader")
                    <strong>
                        <p>
                        {{trans('messages.antibiogram-report').' - '.date('d-m-Y')}}
                        </p>
                    </strong>

                    <div id="antibiogram-report">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th rowspan="2">{{ trans('messages.organisms') }}</th>
                                    <th rowspan="3">{{ trans('messages.no-of-isolates')  }}</th>
                                    <th colspan="<?php echo count($drugs); ?>">{{ trans('messages.percentage-of-isolates-susceptible-to-drug')  }}</th>
                                </tr>
                                <tr>
                                     @foreach($drugs as $drug)
                                        <th>{{ $drug->name  }}</th>
                                     @endforeach
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($organisms as $organism)
                                    <tr>
                                        <td>{{ $organism->name }}</td>
                                        <td>{{ $organism->getCount()  }}</td>
                                        @foreach($drugs as $drug)
                                            <td>{{$organism->getDrugOccurence($drug->id) ? round($organism->getDrugOccurence($drug->id) / $organism->getCount() * 100, 2) : 0 }}</td>
                                        @endforeach
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            @endif
        </div>
    </div>
    @endif

@stop
