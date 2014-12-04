#encoding: UTF-8
require_relative './pagamento.rb'

class ProcessadorDeBoletos
  def processa boletos, fatura
    valor_total = 0
    boletos.each do |boleto|
      pagamento = Pagamento.new boleto.valor, MeioDePagamento::BOLETO
      fatura.adiciona_pagamento pagamento
    end
  end
end

module MeioDePagamento
  BOLETO = 0
end
