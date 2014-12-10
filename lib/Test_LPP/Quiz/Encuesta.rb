require './Question.rb'
require './Quiz.rb'

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

load 'Question.txt'

@quiz.run_quiz