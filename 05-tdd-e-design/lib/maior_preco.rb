#encoding: UTF-8
class MaiorPreco
  def encontra carrinho
    return 0 if carrinho.itens.empty?

    maior = carrinho.itens[0].valor_total
    carrinho.itens.each do |item|
      if maior < item.valor_total
        maior = item.valor_total
      end
    end
    maior
  end
end
