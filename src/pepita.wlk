import extras.*
import niveles.*
import wollok.game.*

object pepita {

	var energia = 100
	var property position = game.origin()
	var encontroHijo = false
	var nivelQueSigue
	
	method mostrarSig() = nivelQueSigue 

	method image() {
		return if (self.estaEnElNido()) "pepita-grande.png" else "pepita.png"
	}

	method come(comida){
		energia = energia + comida.energiaQueOtorga()
	}

	method vola(kms) {
		energia = energia - kms * 9
	}

	method irA(nuevaPosicion) {
		self.vola(position.distance(nuevaPosicion))
		position = nuevaPosicion
	}

	method estaCansada() {
		return energia <= 0
	}
	
	method estaEnElNido() {
		return position == nido.position()
	}
	
	method encontrarHijo(){
		encontroHijo = true
	}
	
	method estadoHijo() = encontroHijo
	
	method pasarDeNivel(){
		if(encontroHijo and self.estaEnElNido()){
			game.clear()
			self.mostrarSig().iniciar()
		}
	}
	
	method morir(){
		game.stop()
	}
	
	method siguienteNivel(nivel){
		nivelQueSigue = nivel
	}

	
}

