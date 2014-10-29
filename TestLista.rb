require './lib/ListaEnlazada.rb'
require './lib/Test_LPP.rb'

arrayPreguntas = []

p1 = Pregunta.new("1.-) Cual es la salida del siguiente codigo Ruby?\n\tclass Xyx\n\t  def pots\n\t    @nice\n\t  end\n\tend\n\nxyz = Xyz.new\np xyz.pots",["#<Xyz:0xa00208>","nil","0","Ninguna de las anteriores"],4,2)

arrayPreguntas << p1

p2 = Pregunta.new("2.-) La siguiente definicion de un hash en Ruby es valida:\n\thash_raro = {\n\t  [1,2,3] => Oject.new(),\n\t  Hash.new => :toto\n}",["Cierto","Falso"],2,1)

arrayPreguntas << p2

p3 = Pregunta.new("3.-) Cual es la salida del siguiente codigo Ruby?\n\tclass Array\n\t  def say_hi\n\t    \"HEY!\"\n\t  end\n\tend\n\np [1, \"bob\"].say_hi",["1","bob","HEY!","Ninguna de las anteriores"],4,3)

arrayPreguntas << p3

p4 = Pregunta.new("4.-) Cual es el tipo del objeto en el siguiente codigo Ruby?\n\tclass Objeto\n\tend",["Una instancia de la clase Class","Una constante","Un objeto","Ninguna de las anteriores"],4,1)

arrayPreguntas << p4

p5 = Pregunta.new("5.-) Es apropiado que una clase Tablero herede de una clase Juego",["Cierto","Falso"],2,2)

arrayPreguntas << p5

listaPreguntas = Nodo.from_array(arrayPreguntas)

listaPreguntas.each do |p|
  puts "\n"
  p.valor.to_s
  puts "___\n\n"
end

#puts "\n--- Pregunta 1 ---\n\n"
#p1.to_s


