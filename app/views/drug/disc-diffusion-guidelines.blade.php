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
            <div class="form-group">
                <label for="">Organism</label>

                <select name="organism" class="form-control" id="organism_disc_diff" onchange="fetchDiscDiffusionConfig()" >
                    @foreach($organisms as $organism)
                        <option value={{$organism->id}}>{{ $organism->name }}</option>
                    @endforeach
                </select>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>{{ Lang::choice('messages.drug',1) }}</th>
                        <th width="18%">{{ trans('messages.resistant') }} (Min-Max)</th>
                        <th width="12%">{{ trans('messages.intermediate') }} (Min-Max)</th>
                        <th width="8%">{{ trans('messages.susceptible') }} (Min-Max)</th>
                        <th>{{ trans('messages.save') }}</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($drugs as $drug)
                        <tr>
                            <td>{{ $drug->name }}</td>
                            <td>
                                <div class="row concentration-row">
                                    <span class="col-md-4">
                                        {{ Form::selectRange('min_resistant', 0,
                                            50, 6,
                                        array('class' => 'form-control', 'id' => 'min_resistant_'.$drug->id, 'onchange' => 'updateResistant('.$drug->id.')') )}}

                                    </span>
                                    <span class="col-md-2"><=</span>
                                    <span class="col-md-4">
                                        {{ Form::selectRange('resistant', 6,
                                            50, 10,
                                        array('class' => 'form-control', 'id' => 'resistant_'.$drug->id, 'onchange' => 'updateIntermediate('.$drug->id.', "resistant")') )}}
                                    </span>
                                </div>
                            </td>

                            <!-- intermediate-->
                            <td>
                                <div class="row concentration-row">
                                    <span class="col-md-2" id="min_intermediate_<?php echo $drug->id ?>"> {{ 6 }}  </span>
                                    <span class="col-md-2"><=</span>
                                    <span class="col-md-6">
                                        {{ Form::selectRange('intermediate', 6,
                                            50, 8,
                                        array('class' => 'form-control', 'id' => 'intermediate_'.$drug->id, 'onchange' => 'updateIntermediate('.$drug->id.')' ) )}}
                                    </span>
                                </div>
                            </td>

                            <!-- susceptible-->
                            <td>
                                <div class="row concentration-row">
                                    <span class="col-md-2">>=</span>
                                    <span class="col-md-2" id="susceptible_<?php echo $drug->id ?>">{{ 7 }}</span>
                                </div>
                            </td>

                            <!-- save button-->
                             <td>
                                <a class="btn btn-xs btn-success" href="javascript:void(0)" onclick="saveDrugDiffusionGuideline(<?php echo $drug->id; ?>, <?php echo $drug->drug_id?>)">{{ trans('messages.save') }}</a>
                                <span class="glyphicon" aria-hidden="true" id="guidelines_saved_<?php  echo $drug->id?>"></span>
                            </td>
                        </tr>
                    @endforeach
                    {{ Form::hidden('drugs_len', count($drugs), array('id' => 'drugs-length'))}}
                </tbody>
            </table>
        </div>
    </div>
    <script type="text/javascript">
    
        $(document).ready(function() {
            fetchDiscDiffusionConfig();
        });
        
    </script>
@stop

