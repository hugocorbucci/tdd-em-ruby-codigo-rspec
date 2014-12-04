#encoding: UTF-8
class Copiadora
  def initialize(leitor, escritor)
    @leitor = leitor
    @escritor = escritor
  end
  def copiar
    while @leitor.tem_caracteres
      @escritor.escreve @leitor.le_caracteres
    end
  end
end
