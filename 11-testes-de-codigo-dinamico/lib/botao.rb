#encoding: UTF-8

class Botao
  def initialize(acao, *argumentos)
    @acao = acao
    @argumentos = argumentos
  end
  def executa_em(alvo)
    alvo.send(@acao, *@argumentos)
  end
end
