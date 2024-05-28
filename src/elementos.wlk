


object nivelProduccion{
	var property nivelDeProduccion
}


class Hogar{
	
	var nivelDeMugre
	var confort
	method esBueno()= nivelDeMugre <= confort* 0.5	
}
class Huerta{
	var capacidadDeProduccion
	
	method esBueno() = capacidadDeProduccion > nivelProduccion.nivelDeProduccion() 
}
class Mascota { 
	var property nivelSalud
	method esBueno() = nivelSalud > 250 
}

class Barrio {
	const elemento=[]
	method agregarElemento(nuevoElemento){
		elemento.addAll(nuevoElemento)
	}
	method elmentoEsBueno(){
		elemento.any({x=>x.esBueno()})
	}
	method esCopado() =
		self.cantidadDeElementosBuenos()> self.cantidaDeElementosMalos()
	
	method cantidadDeElementosBuenos()=
		elemento.filter({x=>x.esBueno()}).size()
	
	method cantidaDeElementosMalos()=
		elemento.filter({x=>not x.esBueno()}).size()
	
}
