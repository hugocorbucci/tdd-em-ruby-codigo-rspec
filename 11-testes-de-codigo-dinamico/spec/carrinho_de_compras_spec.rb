#encoding: UTF-8
require_relative '../lib/carrinho_de_compras.rb'

describe CarrinhoDeCompras do
  class ItemFalso
    attr_reader :quantidade
    def initialize(quantidade)
      @quantidade = quantidade
    end
    def valor
      1
    end
  end
  it 'calcula total considerando quantidades' do
    carrinho = CarrinhoDeCompras.new

    carrinho << ItemFalso.new(1)
    carrinho << ItemFalso.new(5)

    expect(carrinho.valor_total).to eq(6)
  end
end
