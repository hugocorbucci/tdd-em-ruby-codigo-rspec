#encoding: UTF-8
require_relative '../lib/copiadora.rb'

describe Copiadora do
  it 'deve ler e enviar o conteudo lido' do
    escritor = double
    leitor = double

    expect(leitor).to receive(:tem_caracteres).twice.and_return(true, false)
    expect(leitor).to receive(:le_caracteres).and_return('mauricio')

    expect(escritor).to receive(:escreve).with('mauricio')

    copiadora = Copiadora.new leitor, escritor

    copiadora.copiar
  end
end
