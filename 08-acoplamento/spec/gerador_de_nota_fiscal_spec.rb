#encoding: UTF-8
require_relative '../lib/pedido.rb'
require_relative '../lib/gerador_de_nota_fiscal.rb'

describe GeradorDeNotaFiscal do
  it 'deve persistir NF gerada' do
    dao = double
    expect(dao).to receive(:persiste)
    sap = double
    allow(sap).to receive(:envia)

    gerador = GeradorDeNotaFiscal.new dao, sap
    pedido = Pedido.new('Mauricio', 1000, 1)

    nf = gerador.gera pedido
  end
  it 'deve enviar NF gerada para SAP' do
    dao = double
    allow(dao).to receive(:persiste)
    sap = double
    expect(sap).to receive(:envia)

    gerador = GeradorDeNotaFiscal.new dao, sap
    pedido = Pedido.new('Mauricio', 1000, 1)

    nf = gerador.gera pedido
  end
end
