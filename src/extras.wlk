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
	
	var property position = game.at(3, 0) //lo trato como method
	var property direccionMov

	method image() = "silvestre.png"

	
	method teEncontro(alguien){
		game.say(self,"te atrape!")
	}
	
	method mover(pos){
		position = pos
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
	
	method come(alguien)	
	method energiaQueOtorga() = calorias
	
}

object manzana inherits Comida(calorias = 100){
	override method image() = "manzana.png"
	
	override method come(alguien){
		game.say(alguien,"Niam")
	}
	
	override method position() = game.at(2,10)
	
}

object alpiste inherits Comida(calorias = 90){
	override method image() = "alpiste.png"
	
	override method come(alguien){
		game.say(alguien,"Niam")
	}
	
	override method position() = game.at(3,5)
}




