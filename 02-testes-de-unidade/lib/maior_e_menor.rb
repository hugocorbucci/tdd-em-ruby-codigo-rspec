#encoding: UTF-8
class MaiorEMenor
  attr_reader :menor, :maior

  def encontra(carrinho)
    carrinho.produtos.each do |produto|
      if (@menor.nil? || produto.valor < @menor.valor)
        @menor = produto
      elsif (@maior.nil? || produto.valor > @maior.valor)
        @maior = produto
      end
    end
  end
end