#encoding: UTF-8
class CalculadoraDeSalario
  def calcula_salario funcionario
    if funcionario.cargo == Cargo::DESENVOLVEDOR
      return funcionario.salario * 0.8 if funcionario.salario > 3000
      return funcionario.salario * 0.9
    elsif funcionario.cargo == Cargo::DBA ||
            funcionario.cargo == Cargo::TESTADOR
      return funcionario.salario * 0.85 if funcionario.salario < 2500
      return funcionario.salario * 0.75
    end
    raise Exception.new('Funcionario invalido')
  end
end
