#encoding: UTF-8
require_relative './item.rb'
require_relative './carrinho_de_compras.rb'

class CarrinhoDeComprasBuilder
  def initialize
    @carrinho = CarrinhoDeCompras.new
  end
  def com_itens(*valores)
    valores.each do |valor|
      @carrinho << Item.new('item', 1, valor)
    end
    self
  end
  def cria
    @carrinho
  end
end
