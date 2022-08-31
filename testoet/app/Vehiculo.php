<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Vehiculo
 *
 * @property $id
 * @property $placa
 * @property $color
 * @property $marca
 * @property $tipo
 * @property $created_at
 * @property $updated_at
 *
 * @property VehiculosUsuario[] $vehiculosUsuarios
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Vehiculo extends Model
{
    
    static $rules = [
		'placa' => 'required',
		'color' => 'required',
		'marca' => 'required',
		'tipo' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['placa','color','marca','tipo'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function vehiculosUsuarios()
    {
        return $this->hasMany('App\VehiculosUsuario', 'vehiculo_id', 'id');
    }
    

}
