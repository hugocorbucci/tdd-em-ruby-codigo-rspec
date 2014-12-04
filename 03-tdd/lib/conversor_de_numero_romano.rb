#encoding: UTF-8
class ConversorDeNumeroRomano
  TABELA = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000,
  }
  def converte numero_em_romano
    TABELA[numero_em_romano]
  end
end
