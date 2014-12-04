#encoding: UTF-8
require_relative '../lib/item.rb'
require_relative '../lib/carrinho_de_compras.rb'
require_relative '../lib/maior_preco.rb'

describe MaiorPreco do
  it 'deve retornar zero se carrinho vazio' do
    carrinho = CarrinhoDeCompras.new

    algoritmo = MaiorPreco.new
    valor = algoritmo.encontra carrinho

    expect(valor).to eq(0)
  end
end
