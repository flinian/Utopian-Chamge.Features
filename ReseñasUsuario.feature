Feature: ReseñasUsuario-HU06
	Como usuario reciclador 
	quiero saber reseñas acerca de los centros de reciclaje
	para poder tener más confianza a la hora de elegir un centro de reciclaje

@Experiencias@opiniones 
Scenario: El usuario quiere dar su reseña de un centro de reciclaje
	Given que el usuario ya realizó la venta en un centro de reciclaje
	And quiere contar su experiencia con un centro de reciclaje
	When entre a la aplicación Utopian Change
	And le de click a la ubicación del centro de reciclaje
	And le de click a [Realizar reseña]
	Then el usuario redacta su experiencia en el cuadro de [texto]
	And lo envía para que otros usuarios puedan visualizarlo
	Examples: Desea escanear su objeto sin complicaciones 
	| texto                                                              |
	| Buen lugar y servicio pero hay que mejorar los timepos de atención |
	| No respetan los precios públicados                                 |
	| Buena experiencia, 5 estrellas                                     | 


Scenario:  El usuario quiere leer reseñas de los centros de reciclaje
	Given el usuario quiere saber las reseñas de un centro de reciclaje
	When le de click a una ubicación de centro de reciclaje
	Then la aplicación le muestra toda la [información del centro de reciclaje]
	And la aplicación muestra en la parte inferior la [reseñas] de los usuarios
	Examples: Desea escanear su objeto sin complicaciones 
	| información del centro de reciclaje          |  | reseñas                                                            |
	| Aforo:50 - Venta/compra                      |  | Buen lugar y servicio pero hay que mejorar los timepos de atención |
	| Atención: 24h Lun. a Vier.                   |  | No respetan los precios públicados                                 |
	| Descripción: Se acepta material de todo tipo |  | Buena experiencia, 5 estrellas                                     | 
