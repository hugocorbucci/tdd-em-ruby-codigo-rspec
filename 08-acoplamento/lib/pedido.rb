#encoding: UTF-8
class Pedido
  attr_reader :cliente, :valor_total, :quantidade_itens
  def initialize(cliente, valor_total, quantidade_itens)
    @cliente = cliente
    @valor_total = valor_total
    @quantidade_itens = quantidade_itens
  end
end
