require 'spec_helper'
require 'app'

describe Posicion do 
	it "deberia inicializar un nuevo tablero" do
		posicion = Posicio.new
		poicion.tablero.should == %w(- - -
									 - - -
									 - - -)
		posicion.turno.should == "x"
	end
end
