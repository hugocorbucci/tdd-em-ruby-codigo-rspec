#encoding: UTF-8
class CarrinhoDeCompras
  attr_reader :produtos
  def initialize
    @produtos = []
  end
  def <<(produto)
    @produtos << produto
  end
end