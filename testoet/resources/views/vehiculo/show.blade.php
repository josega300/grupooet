@extends('layouts.app')

@section('template_title')
    {{ $vehiculo->name ?? 'Show Vehiculo' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Vehiculo</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('vehiculos.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Placa:</strong>
                            {{ $vehiculo->placa }}
                        </div>
                        <div class="form-group">
                            <strong>Color:</strong>
                            {{ $vehiculo->color }}
                        </div>
                        <div class="form-group">
                            <strong>Marca:</strong>
                            {{ $vehiculo->marca }}
                        </div>
                        <div class="form-group">
                            <strong>Tipo:</strong>
                            {{ $vehiculo->tipo }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
