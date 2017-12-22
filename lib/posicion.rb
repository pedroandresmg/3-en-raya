class Posicion
	attr_accessor :tablero, :turno
	def initialize (tablero=nil, turno="x")
		@dimension=3
		@tamano=@dimension*@dimension
		@tablero= tablero || Array.new(@tamano, "-")
		@turno=turno
	end
end