class Posicion
	attr_accessor :tablero, :turno
	def initialize (tablero=nil, turno="x")
		@dimension=3
		@tamano=@dimension*@dimension
		@tablero= tablero || Array.new(@tamano, "-")
		@turno=turno
	end

	def marcar espacio
		@tablero[espacio-1]=@turno
		@turno=otroTurno
		self
	end

	def otroTurnos
		if (@turno=="x")
			@turno="o"
		elsif (@turno=="o")
			@turno="x"
		end
	end
end