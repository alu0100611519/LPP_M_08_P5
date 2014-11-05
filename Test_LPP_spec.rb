require './lib/Test_LPP/ListaEnlazada.rb'
require './lib/Test_LPP/Preguntas.rb'
require './lib/Test_LPP/version.rb'

describe Pregunta do
    before do
        @p1 = Pregunta.new("1.-) Cual es la salida del siguiente codigo Ruby?\n\tclass Xyx\n\t  def pots\n\t    @nice\n\t  end\n\tend\n\nxyz = Xyz.new\np xyz.pots",["#<Xyz:0xa00208>","nil","0","Ninguna de las anteriores"],4,2)
    end
    
    
    it "Debe existir una pregunta" do
        expect(@p1).not_to eq nil
    end
    
    it "Se debe invocar a un metodo para obtener la pregunta" do
        expect(@p1.enunciado).not_to eq "" 
    end
    
    it "Deben existir opciones de respuesta" do
        expect(@p1.op).not_to eq []
    end
    
    it "Se debe invocar a un metodo para obtener las opciones de respuesta" do
        expect(@p1.op).to eq ["#<Xyz:0xa00208>","nil","0","Ninguna de las anteriores"]
    end
    
    it "Se deben mostrar por la consola formateada la pregunta y las opciones de respuesta" do
        expect(@p1.to_s).not_to eq ""
    end

end

describe Node do
    before do
        @v = 2
        @p = 1
        @s = 3
        @n = Node.new(@v,@s,@p)
    end
    it "Debe existir un Nodo de la lista con sus datos y su siguiente" do
        expect(@n.valor).to eq 2
        expect(@n.sig).to eq @s
        expect(@n.prev).to eq @p
    end
end

describe Lista do
    it "Se extrae el primer elemento de la lista" do
    end
    
    it "Se puede insertar un elemento" do
    end
    
    it "Se pueden insertar varios elementos" do
    end
    
    it "Debe existir una lista con su cabeza" do
    end
end