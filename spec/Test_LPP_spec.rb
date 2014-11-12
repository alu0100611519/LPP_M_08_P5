require './lib/Test_LPP/ListaEnlazada.rb'
require './lib/Test_LPP/Preguntas.rb'
require './lib/Test_LPP/version.rb'
require 'spec_helper.rb'

describe Pregunta do
    before do
        @p1 = Pregunta.new("1.-) Cual es la salida del siguiente codigo Ruby?\n\tclass Xyx\n\t  def pots\n\t    @nice\n\t  end\n\tend\n\nxyz = Xyz.new\np xyz.pots",["#<Xyz:0xa00208>","nil","0","Ninguna de las anteriores"],4,2)
    	@p2 = TrueFalse.new("2.-) La siguiente definicion de un hash en Ruby es valida:\n\thash_raro = {\n\t  [1,2,3] => Oject.new(),\n\t  Hash.new => :toto\n}",true)    
    end
    
    it "Comprobar a que clase pertenece" do
	expect(@p2.class).to eq TrueFalse
	expect(@p1.class).not_to eq TrueFalse
        expect(@p1.class).to eq Pregunta
	expect(@p2.class.superclass).to eq Pregunta
    end
    it "Debe existir una pregunta" do
        expect(@p1 == nil).to eq(false)
    end
   
    it "Modulo comparable " do
    	expect(@p1 == @p2).to eq(false)
	expect(@p2 >= @p1).to eq(true)
    end
	 
    it "Se debe invocar a un metodo para obtener la pregunta" do
        expect(@p1.enunciado).not_to eq "" 
    end
    
    it "Deben existir opciones de respuesta" do
        expect(@p1.opciones).not_to eq []
    end
    
    it "Se debe invocar a un metodo para obtener las opciones de respuesta" do
        expect(@p1.opciones).to eq ["#<Xyz:0xa00208>","nil","0","Ninguna de las anteriores"]
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
        expect(@n.sig).to eq 3
        expect(@n.prev).to eq 1
    end
end

describe Lista do
    before do
        @p1 = Pregunta.new("1.-) Cual es la salida del siguiente codigo Ruby?\n\tclass Xyx\n\t  def pots\n\t    @nice\n\t  end\n\tend\n\nxyz = Xyz.new\np xyz.pots",["#<Xyz:0xa00208>","nil","0","Ninguna de las anteriores"],4,2)
        @p2 = TrueFalse.new("2.-) La siguiente definicion de un hash en Ruby es valida:\n\thash_raro = {\n\t  [1,2,3] => Oject.new(),\n\t  Hash.new => :toto\n}",true)
        @p3 = Pregunta.new("3.-) Cual es la salida del siguiente codigo Ruby?\n\tclass Array\n\t  def say_hi\n\t    \"HEY!\"\n\t  end\n\tend\n\np [1, \"bob\"].say_hi",["1","bob","HEY!","Ninguna de las anteriores"],4,3)
        @p4 = Pregunta.new("4.-) Cual es el tipo del objeto en el siguiente codigo Ruby?\n\tclass Objeto\n\tend",["Una instancia de la clase Class","Una constante","Un objeto","Ninguna de las anteriores"],4,1)
        @p5 = TrueFalse.new("5.-) Es apropiado que una clase Tablero herede de una clase Juego",false)
        ary = [@p1,@p2,@p3,@p4,@p5]
        @list = Lista.from_array(ary)
    end
    
    it "Se extrae el primer elemento de la lista" do
        expect(@list.pop).to eq @p1
    end
    
    it "Se puede insertar un elemento" do
        @list.push(@p1)
        expect(@list.tail).to eq @p1
    end
    
    it "Se pueden insertar varios elementos" do
        tmp = [@p2,@p5,@p1]
        @list.push_batch(tmp)
        expect(@list.tail).to eq @p1
        expect(@list.bot.prev.valor).to eq @p5
    end
    
    it "Debe existir una lista con su cabeza" do
        expect(@list.head).not_to eq nil
    end
    
    it "Deben existir [5] elementos en la lista" do
        expect(@list.count).to eq 5
    end

    it "Despues de una eliminación, deben existir 4 elementos en la lista" do
        @list.pop_tail
        expect(@list.count).to eq 4
    end
end
