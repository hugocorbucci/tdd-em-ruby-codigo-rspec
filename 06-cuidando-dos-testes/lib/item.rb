#encoding: UTF-8
class Item
  attr_reader :descricao, :quantidade, :valor_unitario
  def initialize(descricao, quantidade, valor_unitario)
    @descricao = descricao
    @quantidade = quantidade
    @valor_unitario = valor_unitario
  end

  def valor_total
    valor_unitario * quantidade
  end

  def ==(outro_item)
    descricao == outro_item.descricao &&
      quantidade == outro_item.quantidade &&
      valor_unitario == outro_item.valor_unitario
  end
end
