class Estoque
  def initialize
    @livros = []
    @livro.extend Contador
  end
  def exporta_csv
    @livros.each do |livro|
      puts livro.to_csv
    end
  end
  def mais_baratos_que(valor)
    @livros.select do |livro|
    livro.preco <= valor
    end
  end
  def total
    @livros.size
  end
  def <<(livro)
    @livros << livro if livro
    self
  end
  def remove(livro)
    @livro.delete livro
  end
  def maximo_necessario
    @livros.maximo_necessario
  end
end

def livro_para_newsletter(livro)
  if livro.ano_lancamento < 1999
    puts "Newsletter/Liquidacao"
    puts livro.titulo
    puts livro.preco
    puts livro.possui_reimpressao?
  end
end