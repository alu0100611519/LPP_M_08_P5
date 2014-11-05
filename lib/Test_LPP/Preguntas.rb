class Pregunta
        attr_reader :enunciado , :opciones , :numero_opciones , :respuesta
        def initialize (enunciado,opciones, numero_opciones ,respuesta) #enunciado de la pregunta, vector de strings c$
                @op = []
                @enun = enunciado
                @resp = respuesta
                @op = opciones
                @n_o = numero_opciones #tamanyo de las opciones, numero que necesittaremos para usar el bucle
        end
        def to_s
                puts "#{@enun}\n"
                i = 0
                while i < @n_o
                puts "#{i+1}- #{@op[i]}"
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

class TrueFalse < Pregunta

	def initialize (enunciado, opciones , numero_opciones , respuesta )
		super
		raise ArgumentError, 'La respuesta debe ser verdadero o falso' unless respuesta.is_a? Bool
		@op=["Verdadero" , "Falso"]
		@n_o = 2
	end

end