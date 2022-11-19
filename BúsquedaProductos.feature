Feature: BúsquedaProductos-HU07
	Como usuario reciclador 
	quiero saber la ubicación de los lugares que venden productos elaborados con material reciclable
	para saber más información del local 

@Búsqueda
Scenario: El usuario visualiza lugares de venta de productos de material reciclable.
	Given el usuario quiere conocer tiendas de productos reciclables
	When el usuario ingrese a la aplicación
	And el usuario selecciona [Tiendas de productos reciclables]
	And el usuario selecciona una [tienda]
	Then la aplicación muestra la [información] de todos los productos de material reciclado que dispone la tienda.
	Examples: El usuario busca en multiples tiendas de venta de reciclaje
	| tienda      |  | información            |
	| LosVerdes12 |  | peso: 100g             |
	| UNArboles   |  | altura-ancho:40cm-50cm |
	| ReciclajeAc |  | tipo: reusable         | 

Scenario: El usuario es redirigido a la página de la tienda
	Given el usuario le interesa comprar productos elaborados con material reciclable
	When el usuario ingrese a la aplicación
	And el usuario busca y selecciona una [tienda]
	And el usuario visualiza [precios] y [características] del producto
	And el usuario haga clic en el botón “Lo quiero”
	Then la aplicación le redirigirá a la página de la tienda.
	Examples: El usuario selcciona un produto que le interesa
	| tienda      |  | precios                |  | caracteristicas        |
	| LosVerdes12 |  | peso: 100g             |  | Duración apox: 1año    |
	| UNArboles   |  | altura-ancho:40cm-50cm |  | peso: 100g             |
	| ReciclajeAc |  | tipo: reusable         |  | altura-ancho:40cm-50cm | 
