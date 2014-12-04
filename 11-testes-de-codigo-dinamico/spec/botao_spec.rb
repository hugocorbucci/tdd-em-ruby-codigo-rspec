#encoding: UTF-8
require_relative '../lib/botao.rb'

describe Botao do
  it 'chama metodo no alvo ao executar' do
    botao = Botao.new(lambda{|alvo| alvo.teste})
    alvo = double
    expect(alvo).to receive(:teste).with(no_args)

    botao.executa_em(alvo)
  end
  it 'chama metodo no alvo com parametros ao executar' do
    botao = Botao.new(lambda{ |alvo|
      alvo.teste(:parametro1, [:parametro2])
    })
    alvo = double
    expect(alvo).to receive(:teste).with(:parametro1, [:parametro2])

    botao.executa_em(alvo)
  end
end
