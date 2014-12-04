#encoding: UTF-8
require_relative './nota_fiscal.rb'
require_relative './relogio_do_sistema.rb'
require_relative './tabela.rb'

class GeradorDeNotaFiscal
  def initialize(acoes, relogio = RelogioDoSistema.new,
    tabela = Tabela.new)
    @acoes = acoes
    @relogio = relogio
    @tabela = tabela
  end
  def gera(pedido)
    nf = NotaFiscal.new pedido.cliente,
      pedido.valor_total * @tabela[pedido.valor_total],
      @relogio.hoje

    @acoes.each { |acao| acao.executa nf }

    nf
  end
end
