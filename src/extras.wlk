import pepita.*
import wollok.game.*

object nido {

	var property position = game.at(7, 8)

	method image() = "nido.png"

	method teEncontro(ave) {
		game.stop()
	}
}

object silvestre {

	method image() = "silvestre.png"
	
	method position() = game.at(3, 0)
	
	method teEncontro(alguien){
		game.say(self,"te atrape!")
	}

}

object hijo{
	method image() = "hijo.png"
	
	method position() = game.at(3,1)
	
	method teEncontro(alguien){
		game.say(alguien,"te encontre!")
	}
}

class Comida{
	var calorias
	method image()
	method position()
	
	method energiaQueOtorga() = calorias
	
	method cambiarCalorias(caloriasNuevas){
		calorias = caloriasNuevas
	}
}

object manzana inherits Comida(calorias = 100){
	override method image() = "manzana.png"
	
	override method position() = game.at(2,10)
	
}




