#encoding: UTF-8
class Fatura
  attr_reader :pagamentos, :valor
  def initialize(cliente, valor)
    @pagamentos = []
    @valor = valor
  end
  def paga=(paga)
    @paga = paga
  end
  def paga?
    @paga
  end
end
