#encoding: UTF-8
class Produto
  attr_reader :nome, :valor
  def initialize(nome, valor)
    @nome = nome
    @valor = valor
  end
end