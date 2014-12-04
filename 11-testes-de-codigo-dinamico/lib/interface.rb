#encoding: UTF-8
require_relative './desenho.rb'

class Interface
  def initialize
    @itens_visuais = []
  end
  def adiciona(linha, *itens_visuais)
    @itens_visuais << [] while linha >= @itens_visuais.size
    @itens_visuais[linha] += itens_visuais
  end
  def clique(posicao)
    item = identifica_item_sob(posicao)
    item.executa_em(desenho_atual)
  end
  def identifica_item_sob(posicao)
    @itens_visuais[posicao.y][posicao.x]
  end
  def desenho_atual
    Desenho.new
  end
end
