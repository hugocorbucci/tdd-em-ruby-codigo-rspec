#encoding: UTF-8
require_relative './ponto.rb'

class Vetor
  def initialize(x, y)
    @origem = Ponto.new(0,0)
    @destino = Ponto.new(x, y)
  end
  def to_s
    "#{@origem} -> #{@destino}"
  end
end
