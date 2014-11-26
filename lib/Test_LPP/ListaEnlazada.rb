Node = Struct.new(:valor,:sig,:prev)


class Lista
	include Enumerable
	

	def initialize(head=nil, tail=nil)
		@head = head
		@tail = tail
	end
	
	def pop # extraer el primer elemento
		tmp = @head.valor
		@head = @head.sig
		@head.prev = nil
		return tmp
	end

	def self.from_array(ary)
		ary.sort! { |x,y| x.dif <=> y.dif }
		head = Node.new(ary[0],nil,nil)
		previous = head
		current = Node.new(nil,nil,nil)
		ary[1..-1].each do |p|
			previous.sig = Node.new(p,nil,previous)
			current = previous.sig
			previous = current
		end
		Lista.new(head,current)
	end
	
	def head #devuelve el VALOR del primer nodo
		@head.valor
	end
	
	def tail #devuelve el VALOR del ultimo nodo
		@tail.valor
	end
	
	def top #devuelve el primer NODO
		@head
	end
	
	def bot #devuelve el ultimo NODO
		@tail
	end
	
	def push (newP)
		tmp = Node.new(newP,nil,@tail)
		@tail.sig = tmp
		@tail = tmp
	end
	
	def push_batch (aryNews)
		aryNews.each do |nP|
			tmp = Node.new(nP,nil,@tail)
			@tail.sig = tmp
			@tail = tmp
		end
	end
	
	def each(&block)
		tmp = @head
		while tmp do 
			block.call(tmp.valor)
			tmp = tmp.sig
		end
  	end
  	
  	def reverse_each(&block)
  		tmp = @tail
  		while tmp do
  			block.call(tmp)
  			tmp = tmp.prev
  		end
  	end
	
	def reverse!
		nhead = @tail
		ntail = @head
		@head = nhead
		@tail = ntail
		self.reverse_each { |member|
			tmnext = member.prev
			tmprev = member.sig
			member.prev = tmprev
			member.sig = tmnext
		}
	end
	
	def pop_tail
		tmp = @tail.valor
		@tail = @tail.prev
		@tail.sig = nil
		return tmp
	end
	
end
