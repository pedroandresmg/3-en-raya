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
