#encoding: UTF-8
require_relative '../lib/com_limite_de_tempo.rb'

class ObjetoFalso
  def initialize(velocidade_de_execucao)
    @velocidade = velocidade_de_execucao
  end
  def metodo
    sleep(@velocidade)
    return true
  end
end

describe ComLimiteDeTempo do
  it 'chama metodo e termina com sucesso para execucao rapida' do
    execucao_limitada = 
      ComLimiteDeTempo.new(1, ObjetoFalso.new(0))
    
    expect(execucao_limitada.metodo).to eq(true)
  end
  it 'chama metodo e lanca erro para execucao lenta' do
    execucao_limitada = 
      ComLimiteDeTempo.new(1, ObjetoFalso.new(5))
    
    expect{ execucao_limitada.metodo }.to raise_error(TimeoutError)
  end
end
