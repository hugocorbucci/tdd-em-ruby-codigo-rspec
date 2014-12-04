#encoding: UTF-8
require_relative '../lib/calculadora.rb'

describe Calculadora do
  it 'deve somar dois numeros positivos' do
    expect(Calculadora.new.soma(2,2)).to eq(4)
  end
  it 'deve somar positivo com negativo' do
    expect(Calculadora.new.soma(6,-2)).to eq(4)
  end
  it 'deve somar negativo com positivo' do
    expect(Calculadora.new.soma(-6,2)).to eq(-4)
  end
  it 'deve somar dois numeros negativos' do
    expect(Calculadora.new.soma(-2,-2)).to eq(-4)
  end
  it 'deve somar com zero' do
    expect(Calculadora.new.soma(0,4)).to eq(4)
    expect(Calculadora.new.soma(4,0)).to eq(4)
  end
end
