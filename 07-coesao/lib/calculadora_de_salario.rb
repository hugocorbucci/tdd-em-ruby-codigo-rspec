#encoding: UTF-8
class CalculadoraDeSalario
  def calcula_salario funcionario
    funcionario.cargo.regra.calcula funcionario
  end
end