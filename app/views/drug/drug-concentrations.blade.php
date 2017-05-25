@extends("layout")
@section("content")

@if (Session::has('message'))
	<div class="alert alert-info">{{ trans(Session::get('message')) }}</div>
@endif

	<div>
		<ol class="breadcrumb">
		  <li><a href="{{{URL::route('user.home')}}}">{{ trans('messages.home') }}</a></li>
		  <li><a href="{{ URL::route('drug.index') }}">{{ Lang::choice('messages.drug',1) }}</a></li>
		  <li class="active">{{ trans('messages.drug-concentration') }}</li>
		</ol>
	</div>
	<div class="panel panel-primary ">
		<div class="panel-heading ">
			<span class="glyphicon glyphicon-adjust"></span>
			{{ trans('messages.concentration') }}
			<div class="panel-btn">
				
			</div>
		</div>
		<div class="panel-body">
			<div class="display-details">
				
			</div>
			<table class="table table-bordered">
				<thead>
					<tr>
					   <th>{{ trans('messages.concentration-id') }}</th>
					   <th>{{ trans('messages.concentration') }}</th>
					   <th>{{ trans('messages.save') }}</th>
					</tr>
				</thead>
				<tbody>
				 {{ Form::open(array('url' => 'drug/concentration')) }}
					<tr>
						<td></td>
						<td>
								{{ Form::text('concentration', '',
									array('class' => 'form-control') )}}
						</td>
						<td>
							{{ Form::button("<span class='glyphicon glyphicon-save'></span> ".trans('messages.save'), 
									array('class' => 'btn btn-primary', 'onclick' => 'submit()')) }}
						</td>

					</tr>
					{{ Form::close() }}

					@foreach($concentrations as $key => $concentration)
					<tr>
						<td>{{ $concentration->id }}</td>
						<td>
							{{ $concentration->value }}
						</td>
						<td>
						</td>
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
@stop