require 'spec_helper'
require 'posicion'

describe Posicion do 
	it "deberia inicializar un nuevo tablero" do
		posicion = Posicion.new
		posicion.tablero.should == %w(- - -
									  - - -
									  - - -)
		posicion.turno.should == "x"
	end

	it "deberia inicializar una posicion con un tablero y un turno" do
		posicion=Posicion.new(%w(x - -
								 - o -
								 - - -), "o")
		posicion.tablero.should==%w(x - -
								 	- o -
								 	- - -)
		posicion.turno.should=="o"
	end

	it "deberia marcar espacio en el tablero" do
		posicion=Posicion.new.marcar(1)
		posicion.tablero.should == %w(x - -
								 	  - - -
								 	  - - -)
		posicion.turno.should=="o"
	end

	it "deberia desmarcar espacio en el tablero" do
		posicion=Posicion.new.marcar(1).desmarcar
		reiniciar=Posicion.new
		posicion.tablero.should==reiniciar.tablero
		posicion.turno.should==reiniciar.turno
	end

	it "deberia listar los posibles marcamientos para la poicion inicial" do
		Posicion.new.posiblesMarcamientos == (1..9).to_a
	end

	it "deberia listar los posibles marcamientos para una posicion" do
		Posicion.new.marcar(3).posiblesMarcamientos.should==[1,2,4,5,6,7,8,9]
	end
end
