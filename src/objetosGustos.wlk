// PESO EXPRESADO EN GRAMOS
// PERSONAS

object rosa{
	method leGusta(objeto){
		return objeto.peso() <= 2000
	}
}
object estefania{
	method leGusta(objeto){
		return objeto.color().esFuerte()
	}
}
object luisa{
	method leGusta(objeto){
		return objeto.material().esBrillante()
	}
}
object juan{
	method leGusta(objeto){
		return not objeto.color().esFuerte() || objeto.peso().between(1200, 1800)
	}
}

// COLORES

object rojo{
	method esFuerte() = true
}
object verde{
	method esFuerte() = true
}
object celeste{
	method esFuerte() = false
}
object pardo{
	method esFuerte() = false
}

// MATERIAL

object cobre{
	method esBrillante() = true
}
object vidrio{
	method esBrillante() = true
}
object lino{
	method esBrillante() = false
}
object madera{
	method esBrillante() = false
}
object cuero{
	method esBrillante() = false
}

// OBJETOS

object remera{
	method color() = rojo
	method material() = lino
	method peso() = 800
}
object pelota{
	method color() = pardo
	method material() = cuero
	method peso() = 1300
}
object biblioteca{
	method color() = verde
	method material() = madera
	method peso() = 8000
}
object munieco{
	var peso
	
	method color() = celeste
	method material() = vidrio
	method peso() = peso
	method peso(pesoAsignado){
		peso = pesoAsignado
	}
}
object placa{
	var color
	var peso
	
	method color() = color
	method color(colorAsignado){
		color = colorAsignado
	}
	method material() = cobre
	method peso() = peso
	method peso(pesoAsignado){
		peso = pesoAsignado
	}
}

// BOLICHITO----------------------------------------------------------------

object bolichito{
	var objetoEnVidriera
	var objetoEnMostrador
	method objetoEnVidriera() = objetoEnVidriera
	method objetoEnVidriera(objetoAsignado){
		objetoEnVidriera = objetoAsignado
	}
	method objetoEnMostrador() = objetoEnMostrador
	method objetoEnMostrador(objetoAsignado){
		objetoEnMostrador = objetoAsignado
	}
	
	method esBrillante(){
		return objetoEnVidriera.material().esBrillante() && objetoEnMostrador.material().esBrillante()
	}
	method esMonocromatico(){
		return objetoEnVidriera.color() == objetoEnMostrador.color()
	}
	method estaDesequilibrado(){
		return objetoEnMostrador.peso() > objetoEnVidriera.peso()
	}
	method tieneAlgoDeColor(color){
		return objetoEnVidriera.color() == color || objetoEnMostrador.color() == color
	}
	method puedeMejorar(){
		return self.estaDesequilibrado() || self.esMonocromatico()
	}
	method puedeOfrecerleAlgoA(persona){
		return persona.leGusta(objetoEnVidriera) || persona.leGusta(objetoEnMostrador)
	}
}