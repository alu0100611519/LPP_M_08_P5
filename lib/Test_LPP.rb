require "Test_LPP/version"

module TestLPP
  class Pregunta
    def initialize (enunciado,opciones,respuesta)
      @enun = enunciado
      @op = opciones
      @resp = respuesta
    end

    def to_s
      toReturn = ""
      toReturn << @enun << "\n"
      @op.each do |op|
        toReturn << op << "\n"
      end
      toReturn
    end

    def responder (eleccion)
      eleccion == @resp
    end

  end 

end
