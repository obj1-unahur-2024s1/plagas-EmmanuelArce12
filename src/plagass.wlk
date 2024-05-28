class Plaga {
	var poblacion
	
	method trasmitirEnfermedades()= poblacion >= 10
	
	
}

class Cucarachas inherits Plaga{
	var pesoPromedio
	method nivelDeDanio()= poblacion/2
	override method trasmitirEnfermedades()= super() and pesoPromedio >= 10 
}
class Pulgas inherits Plaga{
	method nivelDeDanio() = poblacion *2
	
}
class Garrapatas inherits Pulgas{
	
}
class Mosquitos inherits Plaga{
	method nivelDeDanio()= poblacion
	override method trasmitirEnfermedades()= super() and poblacion % 3==0 
}