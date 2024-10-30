module Contador
      def @livros.<<(livro)
    push(livro)
    if @maxima_necessario.nil? || @maxima_necessario < size
      @maxima_necessario = size
    end
    self
      end
    attr_reader :maximo_necessario
end