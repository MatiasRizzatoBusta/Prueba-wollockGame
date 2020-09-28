import pepita.*
import comidas.*
import extras.*
import wollok.game.*

object tutorial1 {

	method iniciar() {
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(manzana)
		game.addVisualCharacter(pepita)
		game.addVisual(hijo)
		config.configurarColisiones()
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
		config.configurarColisiones()
		pepita.siguienteNivel(tutorial3)
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
		keyboard.up().onPressDo({pepita.irA(pepita.position().up(1))})
		keyboard.left().onPressDo({ pepita.irA(pepita.position().left(1))})
		keyboard.right().onPressDo({ pepita.irA(pepita.position().right(1))})
		keyboard.down().onPressDo({pepita.irA(pepita.position().down(1))})
	}

	method configurarColisiones() {
		game.onCollideDo(manzana,{algo => algo.come(manzana)})
		game.onCollideDo(nido,{algo => algo.pasarDeNivel()})
		game.onCollideDo(hijo,{algo => algo.encontrarHijo()})
		game.onCollideDo(silvestre,{algo => algo.morir()}) //se acaba el juego
		game.onCollideDo(pepita, { algo => algo.teEncontro(pepita)})
	}

}

