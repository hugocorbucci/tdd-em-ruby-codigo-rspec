#encoding: UTF-8
class CalculadoraDeImposto
  def initialize(tabela)
    @tabela = tabela
  end
  def calcula_imposto(pedido)
    taxa = @tabela.pega_para_valor pedido.valor
    pedido.valor * taxa
  end
end
