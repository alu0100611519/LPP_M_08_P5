class Node
attr_accessor :valor , :pre , :sig

	def initialize(valor , pre , sig)
	@valor = valor
	@sig   = sig
	@pre   = pre
	
	end

end




class Lista
	attr_accessor :arreglo
	include Enumerable
	include Comparable

	def initialize(arreglo)

		@head = Node.new( nil , nil , nil)
		from_array(arreglo)	
   		
  	end
	
	def valido
	return @head.valor
	end

	def each(&b)
    		yield self
    		sig.each(&b) if sig
  	end


	def from_array(ary)

	if ary.kind_of? Fixnum
			tmp = Node.new( ary, nil , nil)
			@head.pre = tmp
			tmp.sig = @head
			@head = tmp
	elsif ary.kind_of? Array

		(0..(ary.length)).each do |i|
			tmp = Node.new(ary[i], nil , nil)
			@head.pre = tmp
			tmp.sig   = @head
			@head     = tmp
		end
	end   
	
    #top = self.new(ary[0], nil)
    #ant = top
    #ary[1..-1].each do |val|
     #node = self.new(val, nil)
      #ant.sig = node
      #ant = node
    #end
    #top
  	end
end



p = Lista.new(1)
puts "Valor p: #{p.valido}"

