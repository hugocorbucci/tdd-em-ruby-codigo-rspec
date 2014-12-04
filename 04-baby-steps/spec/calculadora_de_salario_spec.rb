#encoding: UTF-8
require_relative '../lib/calculadora_de_salario.rb'
require_relative '../lib/funcionario.rb'

describe CalculadoraDeSalario do
  it 'deve calcular salario para desenvolvedores com salario abaixo do limite' do
    calculadora = CalculadoraDeSalario.new
    desenvolvedor = Funcionario.new('Mauricio', 1500.0, Cargo::DESENVOLVEDOR)

    salario = calculadora.calcula_salario desenvolvedor

    expect(salario).to eq(1500 * 0.9)
  end
  it 'deve calcular salario para desenvolvedores com salario acima do limite' do
    calculadora = CalculadoraDeSalario.new
    desenvolvedor = Funcionario.new('Mauricio', 4000.0, Cargo::DESENVOLVEDOR)

    salario = calculadora.calcula_salario desenvolvedor

    expect(salario).to eq(4000 * 0.8)
  end
  it 'deve calcular salario para DBAs com salario abaixo do limite' do
    calculadora = CalculadoraDeSalario.new
    desenvolvedor = Funcionario.new('Mauricio', 500.0, Cargo::DBA)

    salario = calculadora.calcula_salario desenvolvedor

    expect(salario).to eq(500 * 0.85)
  end
end
