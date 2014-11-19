 
 require_relative "ListaEnlazada"
 require_relative "Preguntas"
 require 'pry'

class Exam
	
	def initialize( lis )
		raise ArgumentError, 'No es una lista' unless lis.is_a? Lista
		puts "Introduzca su nombre:"
		STDOUT.flush
		@nombre = gets.chomp
		puts "Introduzca su apellido:"
		STDOUT.flush
		@apellido = gets.chomp
		@wrong = 0
		@right = 0
		@Lis = lis
	end
	
	def initialize (lis, nombre, apellidos)
		raise ArgumentError, 'No es una lista' unless lis.is_a? Lista
		@nombre = nombre
		@apellido = apellidos
		@wrong = 0
		@right = 0
		@Lis = lis
	end

	def nombre
		 @nombre
	end
	
	def apellido
		 @apellido
	end 

	def correcta
		 @right
	end 

	def incorrecta
		@wrong
	end

	def testcheck (ary)
		tmp = @Lis
		i = 0
		tmp.each do |q|
			if q.responder(ary[i])
				@right += 1
			else
				@wrong += 1
			end
			i += 1
		end
		@right	
	end

	def run
		puts "/n/nExamen de LPP "
		puts "Apellidos: #{@apellido}"
		puts "Nombre: #{@nombre}\n"
		puts "------------------------------------------------\n"
		req = @Lis.count / 2
		puts "El examen consta de #{@Lis.count} preguntas. Necesita acertar #{req} para aprobar. Suerte!"
		tmp = @Lis
		tmp.each do |q|
			puts "#{q.to_s}\n"
			STDOUT.flush
			eleccion = gets.chomp
			puts "\tRespuesta__ #{eleccion}\n"
			
			if q.responder(eleccion)
				@right += 1
			else
				@wrong += 1
			end
			puts "-----------\n"
		end
		toReturn = "\n\nEl examen ha sido "
		if (@right >= ((@Lis.count)/2))
			toReturn << "APROBADO"
		else
			toReturn << "SUSPENDIDO"
		end
		toReturn << " con una tasa de aciertos de #{@right} sobre #{@Lis.count}"
		puts toReturn
		true
	end 
end