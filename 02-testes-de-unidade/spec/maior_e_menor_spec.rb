#encoding: UTF-8
require_relative '../lib/maior_e_menor.rb'
require_relative '../lib/carrinho_de_compras.rb'
require_relative '../lib/produto.rb'

describe MaiorEMenor do
  it 'deveria funcionar em ordem decrescente' do
    carrinho = CarrinhoDeCompras.new

    carrinho << Produto.new('Geladeira', 450.0)
    carrinho << Produto.new('Liquidificador', 250.0)
    carrinho << Produto.new('Jogo de pratos', 70.0)

    algoritmo = MaiorEMenor.new
    algoritmo.encontra carrinho
    
    expect(algoritmo.menor.nome).to eq('Jogo de pratos')
    expect(algoritmo.maior.nome).to eq('Geladeira')
  end
end
