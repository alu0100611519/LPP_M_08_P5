class Nodo
  attr_accessor :valor, :sig

  def initialize(value, sig=nil)
    @valor = value
    @sig = sig
  end

  def each(&b)
    yield self
    sig.each(&b) if sig
  end

  include Enumerable

  def self.from_array(ary)
    top = self.new(ary[0], nil)
    post = head
    ary[1..-1].each do |val|
      node = self.new(val, nil)
      post.sig = node
      post = node
    end
    top
  end
end
