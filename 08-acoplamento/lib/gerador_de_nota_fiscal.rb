#encoding: UTF-8
require_relative './nota_fiscal.rb'
require_relative './nf_dao.rb'

class GeradorDeNotaFiscal
  def initialize(dao)
    @dao = dao
  end
  def gera(pedido)
    nf = NotaFiscal.new pedido.cliente,
      pedido.valor_total * 0.94, Time.now

    @dao.persiste nf

    nf
  end
end
