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

object arito{
	method color() = celeste
	method material() = cobre
	method peso() = 180
}

object banquito{
	var color = naranja
	
	method color() = color
	method color(colorAsignado){
		color = colorAsignado
	}
	method material() = madera
	method peso() = 1700
}

object cajita{
	var objetoAdentro
	
	method color() = rojo
	method material() = cobre
	method guardarObjeto(objetoAGuardar){
		objetoAdentro = objetoAGuardar
	}
	method peso(){
		return objetoAdentro.peso() + 400
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
object naranja{
	method esFuerte() = true
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
