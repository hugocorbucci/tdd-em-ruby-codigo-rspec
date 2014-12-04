#encoding: UTF-8
class CalculadoraDeSalario
  def calcula_salario funcionario
    if funcionario.cargo == Cargo::DESENVOLVEDOR
      return 3200.0 if funcionario.salario > 3000
      return 1350.0
    end
    return 425.0
  end
end
