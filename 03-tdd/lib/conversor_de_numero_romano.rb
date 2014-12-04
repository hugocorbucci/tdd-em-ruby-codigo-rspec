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
    ultimo_vizinho_da_direita = 0
    digitos = numero_em_romano.split('').
      map{|digito| TABELA[digito]}
    digitos.reverse.reduce(0) do |acumulador, digito|
      multiplicador = 1
      multiplicador = -1 if digito < ultimo_vizinho_da_direita

      # atualiza o vizinho da direita
      ultimo_vizinho_da_direita = digito

      acumulador + digito * multiplicador
    end
  end
end
