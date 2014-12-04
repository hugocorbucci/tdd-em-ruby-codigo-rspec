#encoding: UTF-8
require_relative './nota_fiscal.rb'
require_relative './nf_dao.rb'

class GeradorDeNotaFiscal
  def gera(pedido)
    nf = NotaFiscal.new pedido.cliente,
      pedido.valor_total * 0.94, Time.now

    NFDao.new.persiste nf

    nf
  end
end
