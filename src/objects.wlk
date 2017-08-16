import personas.*
import patovas.*
import DJs.*
import pistas.*

object berghain{
	var personas = #{}
	var patovaDeTurno
	
	method patovaDeTurno(unPatova){
		patovaDeTurno = unPatova
	}
	method ingresarPersona(unaPersona){
		if (patovaDeTurno.verSiPasa(unaPersona)){
			personas.add(unaPersona)
		}
	}
	method personasBailandoEn(unaPista){
		return unaPista.cantidadPersonasBailando()
	}
}