class Question

	attr_reader :rating
	def initialize(titlew, ratingw)

		@title   = titlew
		@rating  = ratingw
		@options = []
	end

	def add_option(option)
		@options << option
	end
end

class Text < Question

	def ask
		puts ""
		puts "#{@title} (#{@rating})"
		print "Introducir respuesta: "
		@answer = gets.to_s.strip
		return true if @answer.casecmp(@options[0].title) == 0
		return false
	end
end


class Multirespuesta < Question

	def ask
		puts ""
		puts "#{@title} (#{@rating})"
		@options.size.times do |i|
			puts "#{i+1} - #{@options[i].title}"
		end

		print "Introducir opcion: "
		@answer =gets.to_i - 1
		return @options[@answer].correct
	end
end

class TrueFalse < Question

	def ask
		puts ""
		puts "#{@title} (#{rating})"
		puts "1- True"
		puts "2- False"
		@answer = gets.to_s.strip
		return true if @answer.casecmp(@options[0].title) == 0
		return false
	end

end

class Option
	attr_reader :title, :correct
	def initialize(titlew , correctw)
		@title = titlew
		@correct = correctw
	end
end
