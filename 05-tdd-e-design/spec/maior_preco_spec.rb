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
  it 'deve retornar valor do item se carrinho com 1 elemento' do
    carrinho = CarrinhoDeCompras.new
    carrinho << Item.new('Geladeira', 1, 900.0)

    algoritmo = MaiorPreco.new
    valor = algoritmo.encontra carrinho

    expect(valor).to eq(900.0)
  end
end
