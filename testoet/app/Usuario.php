<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Usuario
 *
 * @property $id
 * @property $numero_cedula
 * @property $primer_nombre
 * @property $segundo_nombre
 * @property $apellidos
 * @property $direccion
 * @property $telefono
 * @property $ciudad
 * @property $perfil
 * @property $created_at
 * @property $updated_at
 *
 * @property VehiculosUsuario[] $vehiculosUsuarios
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Usuario extends Model
{
    
    static $rules = [
		'numero_cedula' => 'required',
		'primer_nombre' => 'required',
		'segundo_nombre' => 'required',
		'apellidos' => 'required',
		'direccion' => 'required',
		'telefono' => 'required',
		'ciudad' => 'required',
		'perfil' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['numero_cedula','primer_nombre','segundo_nombre','apellidos','direccion','telefono','ciudad','perfil'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function vehiculosUsuarios()
    {
        return $this->hasMany('App\VehiculosUsuario', 'usuario_id', 'id');
    }
    

}
