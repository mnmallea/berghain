object mainRoom{
	var personasBailando = #{}
	
	method agregarPersona(unaPersona){
		personasBailando.add(unaPersona)
	}
	method bailaPista(){
		personasBailando.forEach({persona => self.hacerBailar(persona)})
	}
	method hacerBailar(unaPersona){
		unaPersona.disminuirEnergia(40)
		unaPersona.aumentarDiversion(30)
	}
	method cantidadDePersonasBailando(){
		return personasBailando.size()
	}
	method estaBailando(unaPersona){
		return personasBailando.contains(unaPersona)
	}
}

object panoramaBar{
	var personasBailando = #{}
	var djActual
	
	method agregarPersona(unaPersona){
		personasBailando.add(unaPersona)
	}
	method djActual(unDJ){
		djActual = unDJ
	}
	method bailaPista(){
		personasBailando.forEach({persona => djActual.hacerBailar(persona)})
	}
	method estaBailando(unaPersona){
		return personasBailando.contains(unaPersona)
	}
	method cantidadDePersonasBailando(){
		return personasBailando.size()
	}

}

object darkRoom{
	var personasBailando = #{}
	
	method agregarPersona(unaPersona){
		personasBailando.add(unaPersona)
	}
	method estaBailando(unaPersona){
		return personasBailando.contains(unaPersona)
	}
	method cantidadDePersonasBailando(){
		return personasBailando.size()
	}
}