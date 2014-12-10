class Quiz

	def initialize(namew)

		@name = namew
		@questions = []
	end


	def add_question(question)
	
		@questions << question
	end


	def last_question

		@questions.last
	end

	def run_quiz

		@count = 0
		@total = 0

		@questions.each do |e| #es q en el diagrama
			@count += e.rating if e.ask
			@total += e.rating
		end

		puts ""
		puts "Tienes #{@count} respuestas correctas de #{@total}."
	end
end
