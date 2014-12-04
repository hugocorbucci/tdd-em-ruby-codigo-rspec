#encoding: UTF-8
require_relative '../lib/item.rb'

describe Item do
  it 'alternativa 1' do
    item = item_que_veio_do_metodo_sob_teste
    expect(item.descricao).to eq('Geladeira')
    expect(item.valor_unitario).to eq(900.0)
    expect(item.quantidade).to eq(1)
    expect(item.valor_total).to eq(900.0)
  end
  it 'alternativa 2' do
    item = item_que_veio_do_metodo_sob_teste
    item_esperado = Item.new('Geladeira', 1, 900.0)
    expect(item).to eq(item_esperado)
  end
  def item_que_veio_do_metodo_sob_teste
    Item.new('Geladeira', 1, 900.0)
  end
end
