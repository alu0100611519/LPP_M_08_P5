class Pregunta

	include Comparable

        def initialize (enunciado,opciones, numero_opciones ,respuesta) #enunciado de la pregunta, vector de strings c$
                @op = []
                @enun = enunciado
                @resp = respuesta
                @op = opciones
                @n_o = numero_opciones #tamaño de las opciones, numero que necesittaremos para usar el bucle
        end
        
	#to string
        def to_s
                tmp = ""
                tmp << "#{@enun}\n"
                i = 0
                while i < @n_o
                tmp << "#{i+1}- #{@op[i]}\n"
                i += 1
                end
                tmp
        end #end to_s
	
        
        def enunciado
                @enun
        end
        
        def opciones
                @op
        end
	
	def correcta
		@resp
	end

	def <=>(other)
		#return nil unless other.instance_of? Pregunta
		self.enunciado().length <=> other.enunciado.length
	end      	
	def ==(other)
	
		if(other == nil)
			return false
		else
			if (self.enunciado() == other.enunciado()) && ( self.opciones() == other.opciones())
				return true
			else
				return false
			end 
		end
	end

	def >=(other)

		if(other == nil)
			return true
		else
			if( self.enunciado().length >= other.enunciado().length)
				return true
			else
				return false
			end
	
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

	def initialize (enunciado, cierta)
	  @op = ["Cierto","Falso"]
	  @enun = enunciado
	  if cierta
	    @resp = 1
	  else
	    @resp = 2
	  end
	  @n_o = 2
	end

        def to_s
          "#{@enun}\n1- Cierto\n2- Falso\n"
        end

end
