require_relative "livro"
require_relative "contador"
require_relative "estoque"

def livro_para_newsletter(livro)
  if livro.ano_lancamento < 1999
    puts "Newsletter/Liquidacao"
    puts livro.titulo
    puts livro.preco
    puts livro.possui_reimpressao?
  end
end

algoritmos = Livro.new("Algoritmos", 100, 1998, true, " ", "livro")
arquitetura = Livro.new("Introdução a arquitetura", 70, 2011, true, " ", "livro")
ruby = Livro.new("Programming Ruby", 100, 2004, true, " ", "livro")
programmer = Livro.new("The programmatic programmer", 100, 1999, true, " ", "livro")
revistona = Livro.new("Revista de Ruby", 10, 2012, true, "Revista", "revista")
online_arquitetura = Livro.new("Introducao a arquitetura e design de software", 50, 2012, true, "", "ebook")

estoque = Estoque.new
estoque << algoritmos << algoritmos << ruby << programmer << arquitetura << ruby << ruby << revistona << revistona << online_arquitetura
estoque.vende ruby
estoque.vende algoritmos
estoque.vende algoritmos
estoque.vende revistona
estoque.vende ruby
estoque.vende ruby
estoque.vende online_arquitetura
puts estoque.livro_que_mais_vendeu_por_titulo.titulo
puts estoque.revista_que_mais_vendeu_por_titulo.titulo
puts estoque.ebook_que_mais_vendeu_por_titulo.titulo
