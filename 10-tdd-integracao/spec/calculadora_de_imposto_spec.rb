#encoding: UTF-8
require_relative '../lib/calculadora_de_imposto.rb'
require_relative '../lib/pedido.rb'

describe CalculadoraDeImposto do
  it 'deve calcular imposto para pedidos superiores a 2000 reais' do
    tabela = double
    # ensinando o mock a devolver 0.1 caso o método
    # pega_para_valor seja invocado com o valor 2500.0
    expect(tabela).to receive(:pega_para_valor).with(2500.0).and_return(0.1)

    pedido = Pedido.new 2500

    calculadora = CalculadoraDeImposto.new tabela

    valor = calculadora.calcula_imposto pedido

    expect(valor).to eq(2500 * 0.1)
  end
end
