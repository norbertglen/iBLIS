@extends("layout")
@section("content")

@if (Session::has('message'))
	<div class="alert alert-info">{{ trans(Session::get('message')) }}</div>
@endif

	<div>
		<ol class="breadcrumb">
		  <li><a href="{{{URL::route('user.home')}}}">{{ trans('messages.home') }}</a></li>
		  <li><a href="{{ URL::route('biochemical.index') }}">{{ Lang::choice('messages.biochemical-test',1) }}</a></li>
		  <li class="active">{{ trans('messages.bio-chemical-test-detail') }}</li>
		</ol>
	</div>
	<div class="panel panel-primary ">
		<div class="panel-heading ">
			<span class="glyphicon glyphicon-adjust"></span>
			{{ trans('messages.bio-chemical-test-detail') }}
			<div class="panel-btn">
				<a class="btn btn-sm btn-info" href="{{ URL::to("biochemical/" . $biochemical_test->id . "/edit") }}">
					<span class="glyphicon glyphicon-edit"></span>
					{{ trans('messages.edit') }}
				</a>
			</div>
		</div>
		<div class="panel-body">
			<div class="display-details">
				<h3 class="view"><strong>{{ Lang::choice('messages.name', 1) }}:</strong> {{ $biochemical_test->name }} </h3>
				
			</div>
		</div>
	</div>
@stop