#encoding: UTF-8

class Botao
  def initialize(acao)
    @acao = acao
  end
  def executa_em(alvo)
    @acao.call(alvo)
  end
end
