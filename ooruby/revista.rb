require_relative "impresso"
require_relative "produto"

class Revista < Produto
  include Impresso

  def initialize(titulo, preco, ano_lancamento, possui_reimpressao, editora, numero)
    super(titulo, preco, ano_lancamento, editora)
    @possui_reimpressao = possui_reimpressao
    @numero = numero
  end

  def matches?(query)
    ["revista", "impresso"].include?(query)
  end
end
