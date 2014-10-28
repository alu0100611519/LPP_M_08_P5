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
    ant = top
    ary[1..-1].each do |val|
      node = self.new(val, nil)
      ant.sig = node
      ant = node
    end
    top
  end
end
