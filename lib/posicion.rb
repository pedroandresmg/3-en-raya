class Posicion
	attr_accessor :tablero, :turno
	def initialize (tablero=nil, turno="x")
		@dimension=3
		@tamano=@dimension*@dimension
		@tablero= tablero || Array.new(@tamano, "-")
		@turno=turno
		@listaDeMarcas=[]
	end

	def marcar espacio
		@tablero[espacio-1]=@turno
		@turno=otroTurno
		@listaDeMarcas << espacio-1
		self
	end

	def otroTurno
		if (@turno=="x")
			@turno="o"
		elsif (@turno=="o")
			@turno="x"
		end
	end

	def desmarcar
		@tablero[@listaDeMarcas.pop]= "-"
		@turno=otroTurno
		self
	end

	def posiblesMarcamientos
		@tablero.map.with_index { |espacioNulo, espacio| espacioNulo=="-" ? espacio+1 :nil }.compact
	end
end