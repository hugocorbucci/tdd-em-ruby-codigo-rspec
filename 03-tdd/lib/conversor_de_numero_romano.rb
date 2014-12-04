#encoding: UTF-8
class ConversorDeNumeroRomano
  TABELA = {
    'I' => 1,
    'II'=> 2,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000,
  }
  def converte numero_em_romano
    acumulador = 0
    numero_em_romano.split('').each do |digito_em_romano|
      acumulador += TABELA[digito_em_romano]
    end
    acumulador
  end
end
