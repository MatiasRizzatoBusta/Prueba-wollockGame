  
import pepita.*
import comidas.*
import extras.*
import wollok.game.*

object tutorial1 {

	method iniciar() {
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisualCharacter(pepita)
		config.configurarTeclas()
		pepita.siguienteNivel(tutorial2)
	}

}

object tutorial2 {

	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
	}

}

object tutorial3 {

	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		config.configurarColisiones()
	}

}


object config {

	method configurarTeclas() {
		keyboard.left().onPressDo({ silvestre.mover(silvestre.position().left(1))})
		keyboard.right().onPressDo({ silvestre.mover(silvestre.position().right(1))})
	}

	method configurarColisiones() {
		game.onCollideDo(pepita, { algo => algo.teEncontro(pepita)})
		game.onCollideDo(nido,{algo => algo.pasarDeNivel()})
		game.onCollideDo(silvestre,{algo => algo.cambiarAVisualGris()})
	}

}


