#encoding: UTF-8
require_relative '../lib/conversor_de_numero_romano.rb'

describe ConversorDeNumeroRomano do
  it 'deve entender o simbolo I' do
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'I'
    expect(numero).to eq(1)
  end
end
