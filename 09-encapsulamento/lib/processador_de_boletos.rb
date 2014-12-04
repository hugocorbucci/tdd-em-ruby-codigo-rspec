#encoding: UTF-8
require_relative './pagamento.rb'

class ProcessadorDeBoletos
  def processa boletos, fatura
    boleto = boletos[0]
    pagamento = 
      Pagamento.new boleto.valor, MeioDePagamento::BOLETO
    fatura.pagamentos << pagamento
  end
end

module MeioDePagamento
  BOLETO = 0
end
