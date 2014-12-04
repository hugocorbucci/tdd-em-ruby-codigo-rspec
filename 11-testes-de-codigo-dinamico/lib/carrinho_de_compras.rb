#encoding: UTF-8
class CarrinhoDeCompras
  def initialize
    @itens = []
  end
  def <<(item)
    @itens << item
  end
  def valor_total
    @itens.map do |item|
      item.valor * item.quantidade
    end.reduce(:+)
  end
end
