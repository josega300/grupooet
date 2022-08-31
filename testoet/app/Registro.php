<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Registro
 *
 * @property $id
 * @property $vehiculo_id
 * @property $usuario_id
 * @property $fecha_asignado
 * @property $created_at
 * @property $updated_at
 *
 * @property Usuario $usuario
 * @property Vehiculo $vehiculo
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Registro extends Model
{
    
    static $rules = [
		//'vehiculo_id' => 'required',
		//'usuario_id' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['vehiculo_id','usuario_id','fecha_asignado'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function usuario()
    {
        return $this->hasOne('App\Usuario', 'id', 'usuario_id');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function vehiculo()
    {
        return $this->hasOne('App\Vehiculo', 'id', 'vehiculo_id');
    }
    

}
