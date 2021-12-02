import filosofos.*

object tomarVino {
	
	method realizarActividad(unFilosofo) {
		unFilosofo.disminuirNivelDeIluminacionEn(10) 
		unFilosofo.agregarHonorifico("el borracho")
	}
}

class JuntarseEnElAgora {
	const filosofoAcompaniante
	
	method realizarActividad(unFilosofo) {
		unFilosofo.aumentarNivelDeIluminacionEn(filosofoAcompaniante.nivelDeIluminacion() / 10)
	}
}

object admirarElPaisaje {
	method realizarActividad(unFilosofo) { }
}

class MeditarBajoUnaCascada {
	const metroDeCascada
	
	method realizarActividad(unFilosofo) {
		unFilosofo.aumentarNivelDeIluminacionEn(metroDeCascada * 10)
	}
}

class PracticarDeporte {
	method realizarActividad(unFilosofo) { 
		unFilosofo.rejuvenecer(self.cantidadDeDias())
	}
	
	method cantidadDeDias()
}

object futbol inherits PracticarDeporte {
	const property cantidadDeDias = 1
}

object polo inherits PracticarDeporte {
	const property cantidadDeDias = 2
}

object waterPolo inherits PracticarDeporte {
	override method cantidadDeDias() {
		return polo.cantidadDeDias() * 2
	}
}



