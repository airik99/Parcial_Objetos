import filosofos.*

class Discusion {
	const unPartido
	const otroPartido
	
	method laDiscusionEsBuena() {
		return self.laMitadDeArgumentosDeLosPartidosSonEnriquesedores() and self.ambosFilosofosEstanEnLoCorrecto()
	} 
	
	method laMitadDeArgumentosDeLosPartidosSonEnriquesedores() {
		return unPartido.laMitadDeLosArgumentosSonEnriquecedores() and otroPartido.laMitadDeLosArgumentosSonEnriquecedores()
	}
	
	method ambosFilosofosEstanEnLoCorrecto() {
		return unPartido.estaEnLoCorrecto() and otroPartido.estaEnLoCorrecto()
	}
}