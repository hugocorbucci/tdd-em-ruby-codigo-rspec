#encoding: UTF-8
require_relative '../lib/item.rb'
require_relative '../lib/carrinho_de_compras.rb'

describe CarrinhoDeCompras do
  before :each do
    @carrinho = CarrinhoDeCompras.new
  end
  it 'deve retornar zero se carrinho vazio' do
    expect(@carrinho.maior_valor).to eq(0)
  end
  it 'deve retornar valor do item se carrinho com 1 elemento' do
    @carrinho << Item.new('Geladeira', 1, 900.0)

    expect(@carrinho.maior_valor).to eq(900.0)
  end
  it 'deve retornar maior valor se carrinho contem muitos elementos' do
    @carrinho << Item.new('Geladeira', 1, 900.0)
    @carrinho << Item.new('Fogão', 1, 1500.0)
    @carrinho << Item.new('Máquina de Lavar', 1, 750.0)

    expect(@carrinho.maior_valor).to eq(1500.0)
  end
end
