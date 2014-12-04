#encoding: UTF-8
class Boleto
  attr_reader :valor
  def initialize(valor)
    @valor = valor
  end
end
