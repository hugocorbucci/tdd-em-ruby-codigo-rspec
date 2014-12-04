#encoding: UTF-8
require_relative './nota_fiscal.rb'
require_relative './relogio_do_sistema.rb'

class GeradorDeNotaFiscal
  def initialize(acoes, relogio = RelogioDoSistema.new)
    @acoes = acoes
    @relogio = relogio
  end
  def gera(pedido)
    nf = NotaFiscal.new pedido.cliente,
      pedido.valor_total * 0.94,
      @relogio.hoje

    @acoes.each { |acao| acao.executa nf }

    nf
  end
end
