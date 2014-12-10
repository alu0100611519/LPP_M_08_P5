require './Question.rb'
require './Quiz.rb'

describe Quiz do
    before do
        @quiz = Quiz.new("Prueba")

        def multichoice(text,rating)
            @quiz.add_question MultiRespuesta.new(text,rating)
        end

        def text(text,rating)
            @quiz.add_question Text.new(text,rating)
        end

        def truefalse(text,rating)
            @quiz.add_question TrueFalse.new(text,rating)
        end
    
        def option(text,correct=nil)
            @quiz.last_question.add_option Option.new(text,correct)
        end
        
        @p = TrueFalse.new('En Ruby los bloques son objetos que contienen codigo', 5)
        @p.add_option('False')
        
        load 'Question.txt'
    end
    
    expect[@quiz.last_question].to eq(@p)
    
end