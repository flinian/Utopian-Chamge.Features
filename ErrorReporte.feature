Feature: ErrorReporte-HU10
	Como usuario reciclador
	quiero poder dejar un reporte de error 
	para poder obtener una solución al error reportado.

@Error@Contacto
Scenario: El usuario desea reportar un error experimentado en la aplicación 

	Given el usuario reciclador ha experimentado un error 
	And desea reportarlo 
	When el usuario revise los códigos de error 
	And no encuentre una solución 
	Then escogerá la opción del menú [Reportar Error]
	And redactara una pequeña descripción del problema

Scenario: El usuario desea obtener una respuesta a su reporte de error

	Given el usuario desea saber la respuesta a su reporte 
	When ingrese a la casilla [Buzón]
	And selecciones nuevos mensajes
	And selecciones el mensaje con el código de error seleccionado.
	Then podrá ver la [respuesta] al error reportado
	Examples: No vinculo su cuenta antes de incicar sesion en el app
	| Respuesta                                                                                                                  |
	| Lametablemente en estos momentos no presenta una cuenta vinculada, intente iniciar sesión con sus credenciales por defecto |  
