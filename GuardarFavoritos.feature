Feature: GuardarFavoritos-HU08
	Como usuario reciclador 
	quiero poder guardar mis centros de reciclajes favoritos
	para poder mantener los centros de interes

@Guardar
Scenario: El usuario reciclador guarda sus puntos de reciclaje favoritos
	Given el usuario reciclador ingresa exitosamente a la aplicación
	And el usuario reciclador se encuentra en la página principal
	And el usuario reciclador obtiene información de centros de reciclaje cercanos
	And el usuario reciclador selecciona el [centro de reciclaje] accesible para él
	When el usuario reciclador hace click en el punto de reciclaje y selecciona la [opción] “Guardar en mis favoritos” 
	Then el sistema guarda el punto de reciclaje elegido en el apartado de [Mis favoritos]
	Examples: El usuario busca y guarda en favoritos un centro de reciclaje
	| centro de reciclaje |  | opción                   |
	| LosVerdes12         |  | Guardar en mis favoritos |
	| UNArboles           |  | Guardar en mis favoritos |
	| ReciclajeAc         |  | Guardar en mis favoritos |  

Scenario: El usuario reciclador no puede guardar sus puntos de reciclaje favoritos
	Given el usuario reciclador ingresa exitosamente a la aplicación
	And el usuario reciclador se encuentra en la página principal
	And el usuario reciclador obtiene información de centros de reciclaje cercanos
	And el usuario reciclador selecciona el [centro de reciclaje] accesible para él
	When el usuario reciclador hace click en el punto de reciclaje y selecciona la [opción] “Guardar en mis favoritos”  
	Then el sistema muestra un [mensaje] “No es posible guardar el punto de reciclaje en favoritos”
	Examples: El usuario busca y pero no logra guardar en favoritos un centro de reciclaje
	| centro de reciclaje |  | opción                   |  | mensaje                                                  |
	| LosVerdes12         |  | Guardar en mis favoritos |  | No es posible guardar el punto de reciclaje en favoritos |
	| UNArboles           |  | Guardar en mis favoritos |  | No es posible guardar el punto de reciclaje en favoritos |
	| ReciclajeAc         |  | Guardar en mis favoritos |  | No es posible guardar el punto de reciclaje en favoritos | 
