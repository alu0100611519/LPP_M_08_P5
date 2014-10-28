#require-relative "Test_LPP/version"

module TestLPP


	class Pregunta
		
		attr_reader :enunciado , :opciones , :numero_opciones , :respuesta

    		def initialize (enunciado,opciones, numero_opciones ,respuesta) #enunciado de la pregunta, vector de strings con las opciones de pregunta, respuesta correcta
     			
			@op = []
			@enun = enunciado
			@resp = respuesta
			@op   = opciones
      			@n_o  = numero_opciones #tamanyo de las opciones, numero que necesittaremos para usar el bucle
    		end

		def to_s

			puts "#{@enun}"
			i = 0
			while i < @n_o
			puts "#{i+1}-#{@op[i]}"
			i += 1 
			end
    		end

		def responder (eleccion)

			if(eleccion == @resp)
				return true
			else
				return false
			end
    		end

  	end 

end

