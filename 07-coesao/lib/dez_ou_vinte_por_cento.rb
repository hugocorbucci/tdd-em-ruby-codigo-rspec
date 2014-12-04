#encoding: UTF-8
class DezOuVintePorCento
  def calcula funcionario
    return funcionario.salario * 0.8 if funcionario.salario > 3000
    return funcionario.salario * 0.9
  end
end
