object mainRoom{
	var personasBailando = #{}
	
	method agregarPersona(unaPersona){
		personasBailando.add(unaPersona)
	}
	method bailaPista(){
		personasBailando.map({persona => self.hacerBailar(persona)})
	}
	method hacerBailar(unaPersona){
		unaPersona.disminuirEnergia(40)
		unaPersona.aumentarDiversion(30)
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
		personasBailando.map({persona => djActual.hacerBailar(persona)})
	}

}

object darkRoom{
	var personasBailando = #{}
	
	method agregarPersona(unaPersona){
		personasBailando.add(unaPersona)
	}
}