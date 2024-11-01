class Heroi
  attr_accessor :linha, :coluna

  def calcula_posicao(direcao)
    novo_heroi = dup
    movimentos = {
      "W" => [-1, 0],
      "S" => [+1, 0],
      "A" => [0, -1],
      "D" => [0, +1]
    }
    movimento = movimentos[direcao.upcase]
    novo_heroi.linha += movimento[0]
    novo_heroi.coluna += movimento[1]
    novo_heroi
  end

  def direita
    calcula_posicao "D"
  end

  def to_array
    [linha, coluna]
  end

  def remove_do(mapa)
    mapa[linha][coluna] = " "
  end

  def coloca_no(mapa)
    mapa[linha][coluna] = "H"
  end

  def direita
    calcula_posicao "D"
  end
  def esquerda
    calcula_posicao "A"
  end
  def cima
    calcula_posicao "W"
  end
  def baixo
    calcula_posicao "S"
  end
end