require_relative "livro"
require_relative "contador"
require_relative "estoque"

algoritmos = Livro.new("Algoritmos", 100, 1998, true)
arquitetura = Livro.new("Introdução a arquitetura", 70, 2011, true)

estoque = Estoque.new
estoque.<< algoritmos
estoque.<< arquitetura
estoque.<< Livro.new("The programmatic programmer", 100, 1999, true)
estoque.<< Livro.new("Programming Ruby", 100, 2004, true)

estoque.exporta_csv

baratos = estoque.mais_baratos_que 80
baratos.each do |livro|
   puts livro.titulo
 end