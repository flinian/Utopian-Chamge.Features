Feature: SignUp-HU05
	Como usuario reciclador, 
	quiero crear una cuenta 
	para poder usar las características de la aplicación.

@SignUp@Resgister
Scenario: El usuario desea poder crear una cuenta en nuestra aplicación por primera vez.
	Given es la primera vez que el usuario reciclador entra a la aplicación
	And no hay cuenta previa.
	When  el usuario seleccione la opción [Registrate]
	And el cliente coloque sus nombres en el campo [Nombre] y [Apellidos]
	And el cliente coloque email  en el campo [Email]
	And el cliente coloque su fecha de nacimiento en el campo [Celular]
	And el cliente coloque su número de DNI en el campo [ID]
	And el cliente coloque su nueva contraseña en el campo [Contraseña]
	Then la aplicación le creará automáticamente una cuenta para el usuario.
	Examples: Ingreso de datos para creación de una cuenta
	| Nombre  |  | Apellidos |  | Email                      |  | Celular         |  | ID       |  | Contraseña |
	| Juan    |  | Gonzales  |  | juan.gonzales@gmail.com    |  | +51 989 627 684 |  | 12345678 |  | @ahbdsauyh |
	| Alberto |  | Aguirrez  |  | alberto.aguirrez@gmail.com |  | +51 444 111 000 |  | 92174982 |  | 1234484324 |
	| Lucia   |  | Sanchez   |  | lucia.sanchez@gmail.com    |  | +51 123 456 789 |  | 98983724 |  | hola123    |  

Scenario: El usuario no pudo crear una cuenta nueva por error en los datos
    Given que el usuario desconoce el motivo de la creación de su nueva cuenta.
	When la aplicación le muestre el [número de error] 
	And el usuario verifica el código de error en la aplicación.
	Then el usuario podrá darse cuenta del error en sus datos.
	Examples: Ingreso de datos para creación de una cuenta
	| Numero de error |
	| E0001           |
	| E1230           |
	| E1222           |  