#encoding: UTF-8
class CalculadoraDeSalario
  def calcula_salario funcionario
    if funcionario.cargo == Cargo::DESENVOLVEDOR
      return dez_ou_vinte_por_cento_de_desconto funcionario
    elsif funcionario.cargo == Cargo::DBA ||
            funcionario.cargo == Cargo::TESTADOR
      return quinte_ou_vinte_cinco_por_cento_de_desconto funcionario
    end
    raise Exception.new('Funcionario invalido')
  end

  private
  def dez_ou_vinte_por_cento_de_desconto funcionario
    return funcionario.salario * 0.8 if funcionario.salario > 3000
    return funcionario.salario * 0.9
  end
  def quinte_ou_vinte_cinco_por_cento_de_desconto funcionario
    return funcionario.salario * 0.85 if funcionario.salario < 2500
    return funcionario.salario * 0.75
  end
end
