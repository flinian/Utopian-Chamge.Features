Feature: Iniciar Sesion-HU09
	Como usuario,
	quiero iniciar sesión 
	para poder usar la aplicacion

@login @validacion 
Scenario: El usuario reciclador logra iniciar sesión con datos válidos.
	Given el usuario reciclador cuenta con el rol de usuario e ingresa a la aplicación
	And el usuario reciclador selecciona la opción de “Iniciar sesión”.
	When el usuario reciclador rellene los campos [Usuario] y [Contraseña] con sus credenciales y hace click en el botón “Ingresar”. 
	Then el sistema de la aplicación corrobora los datos ingresados en los campos obligatorios
	And  la aplicación permite al usuario reciclador iniciar con las actividades que desee en su sesión.
	Examples: Ingreso de credenciales correctos
	| Usuario  |  | Contraseña |
	| Pepito01 |  | 1234asjh@H |
	| L@ura    |  | Asq@.Lr    |
	| UtopianC |  | 12334905   | 

Scenario: El usuario reciclador no logra iniciar sesión con datos no válidos.
	Given el usuario reciclador cuenta con el rol de usuario e ingresa a la aplicación
	And el usuario reciclador selecciona la opción de “Iniciar sesión”.
	When el usuario reciclador rellene los campos [Usuario] y [Contraseña] con sus credenciales y hace click en el botón “Ingresar”. 
	Then  el sistema de la aplicación corrobora los datos ingresados en los campos obligatorios
	And  la aplicación  muestra el mensaje “Usuario y/o contraseña incorrectos”.
	Examples: Ingreso de credenciales erroneos
	| Usuario  |  | Contraseña |
	| Pepito01 |  | 1234asjhaH |
	| L@ura    |  | Asq@lr     |
	| UtopianC |  | 22334905   | 




