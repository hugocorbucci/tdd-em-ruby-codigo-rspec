#encoding: UTF-8
require_relative './nota_fiscal.rb'

class GeradorDeNotaFiscal
  def gera(pedido)
    NotaFiscal.new pedido.cliente,
      pedido.valor_total * 0.94, Time.now
  end
end
