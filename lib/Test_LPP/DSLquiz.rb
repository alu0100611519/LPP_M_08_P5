require './ListaEnlazada.rb'
require './Preguntas.rb'
require './Examen.rb'


    @p = Pregunta.new('',[],0,'',0)
    @n = 0

    def question(text)
        @p.set_enun(text)
    end
    
    def right(text)
        @p.set_resp(@n)
        @p.add_option(text)
        @n += 1
    end
    
    def wrong(text)
        @p.add_option(text)
        @n += 1
    end
    
    def questionend
        @p.set_nOpt(@n)
        quiz.add_question(@p)
        puts "PREGUNTA ANYADIDA: "
        @p.to_s
        @p.set_enun('')
        @p.set_op([])
        @p.set_nOpt(0)
        @p.set_resp('')
        @p.set_dif(0)
    end

class Quiz
    
    attr_reader :questions
    
    def initialize (name='')
        @title = name
        @q = Pregunta.new('',[],0,'',0)
        @n = 0
        @questions = []
        
        yield
        
    end

    #alias method_missing tag
    
    def add_question (q)
        @questions << q
    end
    
end

quiz = Quiz.new("Cuestionario de LPP 05/12/2014") {
    question 'Cuantos argumentos de tipo bloque puede recibir un metodo?'
    right '1'
    wrong '2' 
    wrong 'muchos' 
    wrong 'los que defina el usuario' 
    questionend
    
    question("En Ruby los bloque son objetos que continen codigo")
    wrong('Cierto')
    right('Falso')
    questionend
}

@p = quiz.questions[0]

puts p.to_s