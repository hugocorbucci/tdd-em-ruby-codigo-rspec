#encoding: UTF-8
require_relative './pagamento.rb'

class ProcessadorDeBoletos
  def processa boletos, fatura
    valor_total = 0
    boletos.each do |boleto|
      pagamento = Pagamento.new boleto.valor, MeioDePagamento::BOLETO
      fatura.pagamentos << pagamento

      valor_total += boleto.valor
    end

    fatura.paga = true if valor_total >= fatura.valor
  end
end

module MeioDePagamento
  BOLETO = 0
end
