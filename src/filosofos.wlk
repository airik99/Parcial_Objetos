import argumentos.*
import actividades.*

class Filosofo {
	const nombre
	var edad
	var actividades = []
	var honorificos = #{}
	var nivelDeIluminacion
	var diasVividos = 0
	var argumentos = []
	
	method nivelDeIluminacion() {
		return nivelDeIluminacion
	}
	
	method presentarse() {
		return nombre + ": " + honorificos.join()
	}
	
	method estaEnLoCorrecto() {
		return nivelDeIluminacion > 1000
	}
	
	method disminuirNivelDeIluminacionEn(unaCantidad) {
		nivelDeIluminacion -= unaCantidad
	}
	
	method agregarHonorifico(nuevoHonorifico) {
		honorificos.add(nuevoHonorifico)
	}
	
	method aumentarNivelDeIluminacionEn(unaCantidad) {
		nivelDeIluminacion += unaCantidad
	}
	
	method rejuvenecer(unaCantidadDeDias) {
		diasVividos -= unaCantidadDeDias
		self.verificarDias()
	}
	
	method envejecer(unaCantidadDeDias) {
		diasVividos += unaCantidadDeDias
		self.verificarDias()
	}
	
	method verificarDias() {
		if(diasVividos == 365) {
			edad += 1
			self.aumentarNivelDeIluminacionEn(10)
			diasVividos = 0
		}
		
		if(diasVividos == -365) {
			edad -= 1
			diasVividos = 0
		}
		
		self.verificarEdad()
	}
	
	method verificarEdad() {
		if(edad == 60) {
			self.agregarHonorifico("El sabio")
		}
	}
	
	method vivirUnDia() {
		actividades.forEach { actividad => actividad.realizarActividad(self) }
		self.envejecer(1)
	}
	
	method laMitadDeLosArgumentosSonEnriquecedores() {
		return argumentos.filter { argumento => argumento.esEnriquecedor() }.size() >= argumentos.size() / 2
	}	
}

class FilosofoContemporaneo inherits Filosofo {
	var esAmanteDeLaBotanica = false
	
	override method presentarse() {
		return "hola"
	}
	
	override method nivelDeIluminacion() {
		if(esAmanteDeLaBotanica) {
			nivelDeIluminacion = nivelDeIluminacion * 5
		}
		return nivelDeIluminacion
	}
}