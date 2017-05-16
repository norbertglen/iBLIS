@extends("layout")
@section("content")
<div>
	<ol class="breadcrumb">
	  <li><a href="{{{URL::route('user.home')}}}">{{ trans('messages.home') }}</a></li>
	  <li class="active">{{ Lang::choice('messages.biochemical-test',1) }}</li>
	</ol>
</div>
@if (Session::has('message'))
	<div class="alert alert-info">{{ Session::get('message') }}</div>
@endif
<div class="panel panel-primary">
	<div class="panel-heading ">
		<span class="glyphicon glyphicon-adjust"></span>
		{{ Lang::choice('messages.biochemical-test',1) }}
		<div class="panel-btn">
			<a class="btn btn-sm btn-info" href="{{ URL::to("biochemical/create") }}" >
				<span class="glyphicon glyphicon-plus-sign"></span>
				{{ trans('messages.add-new') }}
			</a>
		</div>
	</div>
	<div class="panel-body">
		<table class="table table-striped table-hover table-condensed search-table">
			<thead>
				<tr>
					<th>{{ trans('messages.description') }}</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			@foreach($biochemical as $key => $value)
				<tr @if(Session::has('activeBiochemicalTest'))
																{{ (Session::get('activeBiochemicalTest') == $value->id) ? "class='info'" : ""}}
																@endif
																>
					<td>{{ $value->name }}</td>
					<td>

					<!-- show the microcritical (uses the show method found at GET /microcritical/{id} -->
						<a class="btn btn-sm btn-success" href="{{ URL::to("biochemical/" . $value->id) }}" >
							<span class="glyphicon glyphicon-eye-open"></span>
							{{ trans('messages.view') }}
						</a>

					<!-- edit this microcritical (uses edit method found at GET /microcritical/{id}/edit -->
						<a class="btn btn-sm btn-info" href="{{ URL::to("biochemical/" . $value->id . "/edit") }}" >
							<span class="glyphicon glyphicon-edit"></span>
							{{ trans('messages.edit') }}
						</a>
						
					<!-- delete this microcritical (uses delete method found at GET /microcritical/{id}/delete -->
						<button class="btn btn-sm btn-danger delete-item-link"
							data-toggle="modal" data-target=".confirm-delete-modal"	
							data-id='{{ URL::to("biochemical/" . $value->id . "/delete") }}'>
							<span class="glyphicon glyphicon-trash"></span>
							{{ trans('messages.delete') }}
						</button>
					</td>
				</tr>
			@endforeach
			</tbody>
		</table>
		{{ Session::put('SOURCE_URL', URL::full()) }}
	</div>
</div>
@stop