class Posicion
	attr_accessor :tablero, :turno
	def initialize
		@dimension=3
		@tamano=@dimension*@dimension
		@tablero=Array.new(@tamano, "-")
		@turno="x"
	end
end