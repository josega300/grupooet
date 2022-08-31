<?php
 
namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
use App\Vehiculo;
use App\Usuario;
 
class AutoCompleteController extends Controller
{
 
    public function index()
    {
        return view('autocomplete-search');
    }
 
    public function searchVehiculo(Request $request)
    {
          $search = $request->get('term');
      
          $result = Vehiculo::where('placa', 'LIKE', '%'. $search. '%')->get();
 
          return response()->json($result);
            
    } 

    public function searchUsuario(Request $request)
    {
          $search = $request->get('term');
      
          $result = Usuario::where('primer_nombre', 'LIKE', '%'. $search. '%')->get();
 
          return response()->json($result);
            
    } 
}

