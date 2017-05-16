@extends("layout")
@section("content")

	@if (Session::has('message'))
		<div class="alert alert-info">{{ trans(Session::get('message')) }}</div>
	@endif
	<div>
		<ol class="breadcrumb">
		  <li><a href="{{{URL::route('user.home')}}}">{{ trans('messages.home') }}</a></li>
		  <li>
		  	<a href="{{ URL::route('biochemical.index') }}">{{ Lang::choice('messages.biochemical-test',1) }}</a>
		  </li>
		  <li class="active">{{ trans('messages.edit-biochemical-test') }}</li>
		</ol>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading ">
			<span class="glyphicon glyphicon-edit"></span>
			{{ trans('messages.edit-biochemical-test') }}
		</div>
		<div class="panel-body">
			@if($errors->all())
				<div class="alert alert-danger">
					{{ HTML::ul($errors->all()) }}
				</div>
			@endif
			{{ Form::model($biochemical_test, array('route' => array('biochemical.update', $biochemical_test->id), 
				'method' => 'PUT', 'id' => 'form-edit-biochemical-test')) }}
				<div class="form-group">
					{{ Form::label('name', Lang::choice('messages.name',1)) }}
					{{ Form::text('name', Input::old('name'), array('class' => 'form-control')) }}
				</div>

				<div class="form-group actions-row">
					{{ Form::button('<span class="glyphicon glyphicon-save"></span> '. trans('messages.save'), 
						['class' => 'btn btn-primary', 'onclick' => 'submit()']) }}
				</div>

			{{ Form::close() }}
		</div>
	</div>
@stop	