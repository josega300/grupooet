El aplicativo consta de 3 entidades base para el modelo
Vehiculos, Usuarios los cuales tienen un perfil de conductores o de propietarios y los registros en donde se almacenan dichas asignaciones.
La tabla de registros guarda los identificadores de los vehiculos asignados a conductores y tambien los propietarios de dichos vehiculos.

En cuanto a la seguridad ya que la organizacion refiere al transporte de losgistica se implemnta un sistema de doble autenticacion con QR en cual puede ser escaneado con la app de "Autenticador de Google" y posteriormente ingresar su codigo para el ingreso. 

Para la gestion de la busqueda se implementa en la vista de "Asignar Vehiculo" un formulario de autocompletado para la placa y el nombre del usuario.

Como plus el aplicativo cuenta con manejo de tiempo de sessiones y de seteo en una cookie de la ip origen para fines de traza.