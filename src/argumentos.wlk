class Argumento {
	const descripcion
	
	method laDescripcionTerminaEnUnSignoDePregunta() {
		return descripcion.words().last() == "?"
	}
	
	method tieneMasDeDiezPalabras() {
		return descripcion.words().size() >= 10
	}
}

class ArgumentoMultiple inherits Argumento {
	const naturalezas = []
	
	method esEnriquesedor() {
		return naturalezas.all { naturaleza => naturaleza.esEnriquecedor(self) } 
	}
}

class ArgumentoSimple inherits Argumento {
	const naturaleza
	
	method esEnriquesedor() {
		return naturaleza.esEnriquecedor(self)
	}
}

object estoica {
	method esEnriquecedor(unArgumento) {
		return true
	}
}

object moralista {
	method esEnriquecedor(unArgumento) {
		return unArgumento.tieneMasDeDiezPalabras()
	}
}

object esceptica {
	method esEnriquecedor(unArgumento) {
		return unArgumento.laDescripcionTerminaEnUnSignoDePregunta()
	}
}

object cinica {
	method esEnriquecedor(unArgumento) {
		return 30.randomUpTo(100) == 100
	}
}