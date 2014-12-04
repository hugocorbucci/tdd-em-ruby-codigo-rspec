#encoding: UTF-8
require_relative './dez_ou_vinte_por_cento.rb'
require_relative './quinze_ou_vinte_cinco_por_cento.rb'

class Cargo
  def initialize(regra)
    @regra = regra
  end

  DESENVOLVEDOR = Cargo.new(DezOuVintePorCento.new)
  DBA = Cargo.new(QuinzeOuVinteCincoPorCento.new)
  TESTADOR = Cargo.new(QuinzeOuVinteCincoPorCento.new)
  attr_reader :regra
  private :initialize
end
