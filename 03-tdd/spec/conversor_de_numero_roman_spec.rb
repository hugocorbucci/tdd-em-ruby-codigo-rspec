#encoding: UTF-8
require_relative '../lib/conversor_de_numero_romano.rb'

describe ConversorDeNumeroRomano do
  it 'deve entender o simbolo I' do
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'I'
    expect(numero).to eq(1)
  end

  it 'deve entender o simbolo V' do
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'V'
    expect(numero).to eq(5)
  end

  it 'deve entender o simbolo II' do
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'II'
    expect(numero).to eq(2)
  end

  it 'deve entender o simbolo XXII' do
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'XXII'
    expect(numero).to eq(22)
  end
end
