Feature: Selección-Búsqueda-HU01
	Como usuario reciclador 
	quiero saber los precios de compra de los materiales reciclables que tengo en mi posesión
	para poder tomar una decisión

@Selección@Búsqueda
Scenario: El usuario visualiza los precios de compra
	Given el usuario reciclador quiere saber los precios de los materiales
	When el usuario ingresa a la aplicación
	And el usuario selecciona un [punto de reciclaje] de su preferencia
	And el usuario busca o selecciona el [tipo de material reciclable] que posee
	Then la aplicación le muestra el [precio de compra del material].
	Examples: Ingreso al aplicativo para ver el catalogo de venta
	| punto de reciclaje |  | tipo de material reciclable |  | precio de compra del material |
	| LosVerdes          |  | madera                      |  | S/40.99                       |
	| TresArboles        |  | plastico                    |  | S/15.99                       |
	| ReciclajeActivo    |  | metal                       |  | S/10.99                       |  


Scenario: El usuario no visualiza el precio de compra
	Given el usuario reciclador quiere saber el precio del material que dispone
	When el usuario reciclador ingresa a la aplicación 
	And el usuario selecciona un [punto de reciclaje] cercano
	Then la aplicación le mostrará el [mensaje] "Por el momento este punto de reciclable no acepta el tipo de material que dispones".
	Examples: El usuario escoje un punto de reciclaje que no acepta producto
	| punto de reciclaje |  | mensaje                                                                            |
	| LosVerdes12        |  | Por el momento este punto de reciclable no acepta el tipo de material que dispones |
	| UNArboles          |  | Por el momento este punto de reciclable no acepta el tipo de material que dispones |
	| ReciclajeAc        |  | Por el momento este punto de reciclable no acepta el tipo de material que dispones |                                                                              |