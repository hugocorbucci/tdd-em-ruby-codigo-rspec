#encoding: UTF-8
require_relative '../lib/calculadora.rb'

describe Calculadora do
  it 'deve somar um mais um' do
    expect(Calculadora.new.soma(1,1)).to eq(2)
  end
  it 'deve somar um mais dois' do
    expect(Calculadora.new.soma(1,2)).to eq(3)
  end
  it 'deve somar dois mais dois' do
    expect(Calculadora.new.soma(2,2)).to eq(4)
  end
end
