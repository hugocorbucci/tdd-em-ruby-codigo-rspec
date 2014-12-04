#encoding: UTF-8
module Cargo
  DESENVOLVEDOR = 0
  DBA = 1
  TESTADOR = 2
end
class Funcionario
  attr_reader :nome, :salario, :cargo
  def initialize(nome, salario, cargo)
    @nome = nome
    @salario = salario
    @cargo = cargo
  end
end