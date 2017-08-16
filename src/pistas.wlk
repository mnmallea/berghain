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
	
	method djActual(unDJ){
		djActual = unDJ
	}
}

object darkRoom{
	var personasBailando = #{}
	
	
}