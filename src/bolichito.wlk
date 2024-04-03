// BOLICHITO----------------------------------------------------------------
import objectos.*
import personas.*

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
