#encoding: UTF-8
require_relative '../lib/pedido.rb'
require_relative '../lib/gerador_de_nota_fiscal.rb'

describe GeradorDeNotaFiscal do
  it 'deve persistir NF gerada' do
    # criando o mock
    dao = double
    # marcando o que esperamos que aconteça
    expect(dao).to receive(:persiste)

    gerador = GeradorDeNotaFiscal.new dao
    pedido = Pedido.new('Mauricio', 1000, 1)

    nf = gerador.gera pedido
  end
end
