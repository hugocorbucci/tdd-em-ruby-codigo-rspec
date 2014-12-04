#encoding: UTF-8
require_relative './nota_fiscal.rb'

class GeradorDeNotaFiscal
  def initialize(acoes)
    @acoes = acoes
  end
  def gera(pedido)
    nf = NotaFiscal.new pedido.cliente,
      pedido.valor_total * 0.94, Time.now

    @acoes.each { |acao| acao.executa nf }

    nf
  end
end
