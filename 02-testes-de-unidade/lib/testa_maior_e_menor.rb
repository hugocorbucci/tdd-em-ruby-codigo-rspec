#encoding: UTF-8
require File.expand_path(File.join(File.dirname(__FILE__), './produto.rb'))
require File.expand_path(File.join(File.dirname(__FILE__), './carrinho_de_compras.rb'))
require File.expand_path(File.join(File.dirname(__FILE__), './maior_e_menor.rb'))

carrinho = CarrinhoDeCompras.new
carrinho << Produto.new('Liquidificador', 250.0)
carrinho << Produto.new('Geladeira', 450.0)
carrinho << Produto.new('Jogo de pratos', 70.0)

algoritmo = MaiorEMenor.new
algoritmo.encontra carrinho

puts "O menor produto: #{algoritmo.menor.nome}"
puts "O maior produto: #{algoritmo.maior.nome}"