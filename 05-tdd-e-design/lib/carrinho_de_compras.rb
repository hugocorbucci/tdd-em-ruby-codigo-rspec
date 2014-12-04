#encoding: UTF-8
class CarrinhoDeCompras
  attr_reader :itens

  def initialize
    @itens = []
  end
  def <<(item)
    itens << item
  end
end
