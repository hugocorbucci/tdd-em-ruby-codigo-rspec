#encoding: UTF-8
class Funcionario
  attr_reader :nome, :salario, :cargo
  def initialize(nome, salario, cargo)
    @nome = nome
    @salario = salario
    @cargo = cargo
  end
end

module Cargo
  DESENVOLVEDOR = {:porcentagem_base => 0.9,
    :porcentagem_acima_do_limite => 0.8,
    :limite => 3000}
  DBA = {:porcentagem_base => 0.85,
    :porcentagem_acima_do_limite => 0.75,
    :limite => 2500}
  TESTADOR = {:porcentagem_base => 0.85,
    :porcentagem_acima_do_limite => 0.75,
    :limite => 2500}
end
