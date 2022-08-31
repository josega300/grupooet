@extends('layouts.app')

@section('template_title')
    {{ $usuario->name ?? 'Show Usuario' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Usuario</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('usuarios.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Numero Cedula:</strong>
                            {{ $usuario->numero_cedula }}
                        </div>
                        <div class="form-group">
                            <strong>Primer Nombre:</strong>
                            {{ $usuario->primer_nombre }}
                        </div>
                        <div class="form-group">
                            <strong>Segundo Nombre:</strong>
                            {{ $usuario->segundo_nombre }}
                        </div>
                        <div class="form-group">
                            <strong>Apellidos:</strong>
                            {{ $usuario->apellidos }}
                        </div>
                        <div class="form-group">
                            <strong>Direccion:</strong>
                            {{ $usuario->direccion }}
                        </div>
                        <div class="form-group">
                            <strong>Telefono:</strong>
                            {{ $usuario->telefono }}
                        </div>
                        <div class="form-group">
                            <strong>Ciudad:</strong>
                            {{ $usuario->ciudad }}
                        </div>
                        <div class="form-group">
                            <strong>Perfil:</strong>
                            {{ $usuario->perfil }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
