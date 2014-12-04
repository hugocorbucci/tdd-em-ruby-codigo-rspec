#encoding: UTF-8
class Fatura
  attr_reader :pagamentos, :valor
  def initialize(cliente, valor)
    @pagamentos = []
    @valor = valor
  end
  def adiciona_pagamento pagamento
    @pagamentos << pagamento

    valor_total = @pagamentos.map(&:valor).reduce(:+)

    @paga = true if valor_total >= @valor
  end
  def paga?
    @paga
  end
end
