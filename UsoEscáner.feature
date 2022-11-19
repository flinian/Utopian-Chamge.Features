Feature: Escaner-HU02
	Como usuario
	quiero poder comprobar si mi objeto es reciclable 
	para poder reciclarlo de manera eficiente

@Escanear@información
Scenario:  El usuario utiliza el escáner exitosamente
	Given el usuario desea usar la función escáner
	When ingresa a la aplicación
	And selecciona el menú de opciones 
	And escoja la opción de [Escanear objeto] 
	And apunta el [objeto] hasta que la aplicación lo indique 
	Then el sistema muestra [información detallada] del objeto respectivo al usuario reciclador.
	Examples: Desea escanear su objeto sin complicaciones 
	| objeto             |  | información detallada |
	| botella            |  | compra/venta          |
	| plasticos dañados  |  | venta                 |
	| muñeco de plastico |  | compra/venta          | 
	

Scenario:  El usuario no recibe información de su objeto.
	Given el usuario desea recibir la información respectiva de su objeto
	When  ingresa a la aplicación
	And selecciona el menú de opciones 
	And escoja la opción de [Escanear objeto]
	And  apunta al [objeto] hasta que la aplicación se lo indique 
	Then la aplicación muestra un [mensaje]  “No se ha podido reconocer el producto”
	Examples: El usuario logra escanear su objeto pero sin resultados
	| objeto                           |  | mensaje                               |
	| piezas complejas                 |  | No se ha podido reconocer el producto |
	| objeto irracional para reciclaje |  | No se ha podido reconocer el producto |
	| Imagen borrosa                   |  | No se ha podido reconocer el producto |      