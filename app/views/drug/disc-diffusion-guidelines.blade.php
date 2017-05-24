@extends("layout")
@section("content")

@if (Session::has('message'))
	<div class="alert alert-info">{{ trans(Session::get('message')) }}</div>
@endif

	<div>
		<ol class="breadcrumb">
		  <li><a href="{{{URL::route('user.home')}}}">{{ trans('messages.home') }}</a></li>
		  <li><a href="{{ URL::route('drug.index') }}">{{ Lang::choice('messages.drug',1) }}</a></li>
		  <li class="active">{{ trans('messages.disc-diffusion-guidelines') }}</li>
		</ol>
	</div>
	<div class="panel panel-primary ">
		<div class="panel-heading ">
			<span class="glyphicon glyphicon-adjust"></span>
			{{ trans('messages.disc-diffusion-guidelines') }}
			<div class="panel-btn">
				
			</div>
		</div>
		<div class="panel-body">
			<div class="display-details">
				
			</div>
			<table class="table table-bordered">
				<thead>
					<tr>
					   <th>{{ Lang::choice('messages.drug',1) }}</th>
					   <th>{{ trans('messages.resistant') }}</th>
					   <th>{{ trans('messages.intermediate') }} </th>
					   <th>{{ trans('messages.susceptible') }} </th>
					   <th>{{ trans('messages.save') }}</th>
					</tr>
				</thead>
				<tbody>
					@foreach($drugs as $key => $drug)
					<tr>
						<td>{{ $drug->name, $drug->id }}</td>
						<td>
								{{ Form::selectRange('resistant', 0, 
									50, $drug->resistant,
									array('class' => 'form-control', 'id' => 'resistant_'.$drug->id) )}}
						</td>
						<td>
								{{ Form::selectRange('intermediate', 0, 
									50, $drug->intermediate, 
									array('class' => 'form-control', 'id' => 'intermediate_'.$drug->id) )}}
						</td>
						<td>
								{{ Form::selectRange('susceptible', 0, 
									50, $drug->susceptible, 
									array('class' => 'form-control', 'id' => 'susceptible_'.$drug->id) )}}
						</td>
						<td>
							<a class="btn btn-xs btn-success" href="javascript:void(0)" onclick="saveDrugDiffusionGuideline(<?php echo $drug->id; ?>, <?php echo $drug->drug_id?>)">
                                                    {{ trans('messages.save') }}</a>
						</td>
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
@stop