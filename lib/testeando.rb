require './Test_LPP/ListaEnlazada.rb'
require './Test_LPP/Preguntas.rb'
require './Test_LPP/version.rb'

#require './lib/Test_LPP.rb'

require 'pry'

p1 = Pregunta.new("1.-) Cual es la salida del siguiente codigo Ruby?\n\tclass Xyx\n\t  def pots\n\t    @nice\n\t  end\n\tend\n\nxyz = Xyz.new\np xyz.pots",["#<Xyz:0xa00208>","nil","0","Ninguna de las anteriores"],4,2)
p2 = TrueFalse.new("2.-) La siguiente definicion de un hash en Ruby es valida:\n\thash_raro = {\n\t  [1,2,3] => Oject.new(),\n\t  Hash.new => :toto\n}",true)
p3 = Pregunta.new("3.-) Cual es la salida del siguiente codigo Ruby?\n\tclass Array\n\t  def say_hi\n\t    \"HEY!\"\n\t  end\n\tend\n\np [1, \"bob\"].say_hi",["1","bob","HEY!","Ninguna de las anteriores"],4,3)
p4 = Pregunta.new("4.-) Cual es el tipo del objeto en el siguiente codigo Ruby?\n\tclass Objeto\n\tend",["Una instancia de la clase Class","Una constante","Un objeto","Ninguna de las anteriores"],4,1)
p5 = TrueFalse.new("5.-) Es apropiado que una clase Tablero herede de una clase Juego",false)


ary = [p1,p2,p3,p4,p5]

list = Lista.from_array(ary)


puts "--- HEADER ---"
puts list.head.to_s

puts "\n--- TAIL---"
puts list.tail.to_s

#binding.pry