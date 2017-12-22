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
end
