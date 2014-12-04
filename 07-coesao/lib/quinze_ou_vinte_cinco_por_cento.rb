#encoding: UTF-8
class QuinzeOuVinteCincoPorCento
  def calcula funcionario
    return funcionario.salario * 0.85 if funcionario.salario < 2500
    return funcionario.salario * 0.75
  end
end
