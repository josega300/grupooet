<div class="box box-info padding-1">
    <div class="box-body">
        
      

        <div class="card">
            <div class="card-header text-center font-weight-bold">
            </div>
        
            <div class="card-body">
            <form name="autocomplete-textbox" id="autocomplete-textbox" method="post" action="#">
            @csrf        
                <div class="form-group">
                    <label for="exampleInputEmail1">Buscar Vehiculo por placa</label>
                    <input type="text" id="placa" name="placa" class="form-control">
                </div>        
                <div class="form-group">
                    <label for="exampleInputEmail1">Buscar Usuario por Nombre</label>
                    <input type="text" id="primer_nombre" name="primer_nombre" class="form-control">
                </div>    
            </form>
            </div>
        </div>


    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>
