#encoding: UTF-8
require_relative '../lib/pedido.rb'
require_relative '../lib/gerador_de_nota_fiscal.rb'

describe GeradorDeNotaFiscal do
  it 'deve gerar NF com valor de imposto descontado' do
    gerador = GeradorDeNotaFiscal.new
    pedido = Pedido.new('Mauricio', 1000, 1)

    nf = gerador.gera pedido

    expect(nf.valor).to be(1000 * 0.94)
  end
end
