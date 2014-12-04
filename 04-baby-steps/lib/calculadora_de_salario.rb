#encoding: UTF-8
class CalculadoraDeSalario
  def calcula_salario funcionario
    return 3200.0 if funcionario.salario > 3000
    return 1350.0
  end
end
