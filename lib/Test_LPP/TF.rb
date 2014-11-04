require "Preguntas.rb"




class TrueFalse < Preguntas

	def initialize (enunciado, opciones , numero_opciones , respuesta )
		super
		raise ArgumentError, 'La respuesta debe ser verdadero o falso' unless respuesta.is_a? Bool
		@op=["Verdadero" , "Falso"]
		@n_o = 2
	end

		


end
