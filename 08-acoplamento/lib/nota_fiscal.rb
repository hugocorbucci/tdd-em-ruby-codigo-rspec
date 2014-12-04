#encoding: UTF-8
class NotaFiscal
  attr_reader :cliente, :valor, :data
  def initialize(cliente, valor, data)
    @cliente = cliente
    @valor = valor
    @data = data
  end
end
