class Pregunta
        def initialize (enunciado,opciones, numero_opciones ,respuesta) #enunciado de la pregunta, vector de strings c$
                @op = []
                @enun = enunciado
                @resp = respuesta
                @op = opciones
                @n_o = numero_opciones #tamaño de las opciones, numero que necesittaremos para usar el bucle
        end
        
        def to_s
                tmp = ""
                tmp << "#{@enun}\n"
                i = 0
                while i < @n_o
                tmp << "#{i+1}- #{@op[i]}\n"
                i += 1
                end
                tmp
        end
        
        def enunciado
                @enun
        end
        
        def opciones
                @op
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

	def initialize (enunciado, cierta)
	      if cierta
	        @op = ["Cierto","Falso"]
	        @enun = enunciado
	        @resp = 1
	        @n_o = 2
	      else
	        @op = ["Cierto","Falso"]
	        @enun = enunciado
	        @resp = 2
	        @n_o = 2
	      end
	end

        def to_s
          "#{@enun}\n1- Cierto\n2- Falso"
        end

end