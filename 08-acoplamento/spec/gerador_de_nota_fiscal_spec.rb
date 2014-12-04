#encoding: UTF-8
require_relative '../lib/pedido.rb'
require_relative '../lib/gerador_de_nota_fiscal.rb'

describe GeradorDeNotaFiscal do
  it 'deve invocar ações posteriores' do
    acao1 = double
    expect(acao1).to receive(:executa)
    acao2 = double
    expect(acao2).to receive(:executa)
    
    gerador = GeradorDeNotaFiscal.new [acao1, acao2]
    pedido = Pedido.new('Mauricio', 1000, 1)

    nf = gerador.gera pedido
  end
end
