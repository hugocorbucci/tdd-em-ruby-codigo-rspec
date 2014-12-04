#encoding: UTF-8
class MaiorPreco
  def encontra carrinho
    return 0 if carrinho.itens.empty?
    return carrinho.itens[0].valor_total
  end
end
