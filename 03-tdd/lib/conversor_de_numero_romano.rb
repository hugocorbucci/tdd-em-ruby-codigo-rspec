#encoding: UTF-8
class ConversorDeNumeroRomano
  def converte numero_em_romano
    if numero_em_romano == 'I'
      return 1
    elsif numero_em_romano == 'V'
      return 5
    end
    return 0 
  end
end
