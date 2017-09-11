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
            <div class="row">
                <div class="checkbox col-sm-2 right">
                    <label for="all_isolates">
                        {{ Form::checkbox('all_isolates', 'true', $all_isolates) }}
                        {{ trans('messages.all-isolates') }}
                    </label>
                </div>
                <div class="col-sm-4">
                    <div class="col-sm-4">
                            {{ Form::label('start', trans("messages.from")) }}
                    </div>
                    <div class="col-sm-3">
                            {{ Form::text('start', isset($start_date) ? $start_date : null, 
                                array('class' => 'form-control standard-datepicker')) }}
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="col-sm-4">
                        {{ Form::label('end', trans("messages.to")) }}
                    </div>
                    <div class="col-sm-3">
                        {{ Form::text('end', isset($end_date) ? $end_date : null, 
                            array('class' => 'form-control standard-datepicker')) }}
                    </div>
                </div>
            </div>
            

            <p><strong>{{ trans('messages.specimen-location')  }}</strong></p>
            <div class="form-pane panel panel-default">
                <div class="row">
                    @foreach($specimen_collection_location as $location)
                        <div class="col-md-2">
                            <label  class="checkbox">
                                {{ Form::checkbox('location[]', $location->id, is_null($specimen_location_ids) ? false :  in_array($location->id, $specimen_location_ids)) }}
                                {{--<input type="checkbox" name="location[]" value="{{ $location->id}}"> --}} {{$location->name}}
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
                                {{ Form::checkbox('specimen_type[]', $specimen_type->id, is_null($specimen_type_ids) ? false : in_array($specimen_type->id, $specimen_type_ids ) ) }}
                                {{-- <input type="checkbox" name="specimen_type[]" value="{{ $specimen_type->id}}"> --}}  {{$specimen_type->name}}
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
                {{ trans('messages.antibiogram-report') }}
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
                                        <th colspan="<?php echo count($drugs); ?>">
                                            {{ trans('messages.percentage-of-isolates-susceptible-to-drug') }}  
                                            &nbsp;  &nbsp;  &nbsp; 
                                            {{ $start_date.' to '.$end_date }}
                                        </th>
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
                                            <td>{{ $organism->getCount($start_date, $end_date)  }}</td>
                                            @foreach($drugs as $drug)
                                                @if($organism->getCount($start_date, $end_date) > 0)
                                                <td>{{$organism->getDrugOccurence($drug->id, $start_date, $end_date) ? round($organism->getDrugOccurence($drug->id, $start_date, $end_date) / $organism->getCount($start_date, $end_date) * 100, 2).'%' : '0%' }}</td>
                                                @else 
                                                    <td> {{ 0 }} </td>
                                                @endif
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

    @if($all_organisms && $specimen_location_ids[0] && $specimen_type_ids[0])
    <table class="table table-bordered">
        <thead>
            <tr>
                <th colspan="<?php echo count($drugs) + 3; ?>">Antibiogram report; isolate source; 
                @foreach($specimen_type_ids as $specimen_type_id)
                {{ $specimen_type_model->getName($specimen_type_id).',' }}
                @endforeach
                </th>
            </tr>
            <tr>
                <th rowspan="2">Organisms</th>
                <th colspan="<?php echo count($drugs) + 2; ?>">Percentage Resistant</th>
            </tr>
            @if($drugs)
            <tr>
                <th>Locations</th>
                <th>{{ trans('messages.all-isolates') }}</th>
                @foreach($drugs as $drug)
                    <th>{{ $drug->name }}</th>
                @endforeach
            </tr>
            @endif
        </thead>
        <tbody>
            @foreach($all_organisms as $organismId => $locations)
                <tr>
                    <td rowspan="{{ count($locations) + 1 }}">{{ $organism_model->getName($organismId)  }}</td>
                </tr>
            
                @foreach($locations as $locationId => $location)
                    <tr>
                        <td>{{ $specimen_location_model->getName($locationId) }}</td>
                        <?php $total = $susceptibility_model ? $susceptibility_model->getResistanceCount($organismId, $locationId, $specimen_type_ids) : 0?>
                        <td> {{ $total }}</td>
                        @forelse($location as $drug)
                            <?php $drugCount = $susceptibility_model->getDrugResistanceCount($organismId, $locationId, $specimen_type_ids, $drug->drug_id) ?>
                            <td>{{ $drugCount ? round(($drugCount / $total) * 100, 2) .'%' : 0 .'%'}}</td>
                        @empty
                            @foreach($drugs as $drug)
                                <td>0%</td>
                            @endforeach
                        @endforelse

                    </tr>
                @endforeach
            @endforeach
        </tbody>
    </table>
    <div id="antibiogram-chart"></div>

    <!-- Begin HighCharts scripts -->
    {{ HTML::script('highcharts/highcharts.js') }}
    {{ HTML::script('highcharts/exporting.js') }}

    <!-- End HighCharts scripts -->
<script type="text/javascript">
	$(document).ready(function(){
		//	Load antibiogram chart
        console.log(<?php echo $chart_data; ?>);
		$('#antibiogram-chart').highcharts(<?php echo $chart_data; ?>);
	});
</script>
    @endif
@stop
