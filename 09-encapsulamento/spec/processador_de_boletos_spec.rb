#encoding: UTF-8
require_relative '../lib/processador_de_boletos.rb'
require_relative '../lib/fatura.rb'
require_relative '../lib/boleto.rb'

describe ProcessadorDeBoletos do
  it 'deve processar pagamento via boleto unico' do
    processador = ProcessadorDeBoletos.new

    fatura = Fatura.new('Cliente', 150.0)
    b1 = Boleto.new(150.0)

    processador.processa([b1], fatura)

    expect(fatura.pagamentos.size).to eq(1)
    expect(fatura.pagamentos[0].valor).to eq(150.0)
  end
end
