require_relative 'ui'

def escolhe_palavra_secreta
  avisando_escolhendo_palavra
  texto = File.new("logic-2/dicionario.txt")
  todas_as_palavras = texto.split"\n"
  numero_escolhido = rand(todas_as_palavras.size)
  palavra_secreta = todas_as_palavras[numero_escolhido]
  avisa_palavra_escolhida palavra_secreta
end

def escolhe_palavra_secreta_sem_consumir_muita_memoria
  avisando_escolhendo_palavra
  arquivo = File.new("logic-2/dicionario.txt")
  quantidade_de_palavras = arquivo.gets.to_i
  numero_escolhido = rand(quantidade_de_palavras)
  for linha in 1..(numero_escolhido-1)
    arquivo.gets
  end
  palavra_secreta = arquivo.gets.strip.downcase
  arquivo.close
  avisa_palavra_escolhida palavra_secreta
end

def le_rank
  conteudo = File.read "rank.txt"
  conteudo.split "\n"
end

def palavra_mascarada(chutes, palavra_secreta)
mascara = ''
  for letra in palavra_secreta.chars
    if chutes.include? letra
      mascara << letra
    else
      mascara << "_"
    end
  end
  mascara
end

def pede_chute_valido(chutes, erros, mascara)
  cabecalho_tentativa chutes, erros, mascara
  loop do
    chute = pede_um_chute
    if chutes.include? chute
      avisa_chute_efeutado chute
    else
      return chute
    end
  end
end

def joga(nome)
  palavra_secreta = escolhe_palavra_secreta_sem_consumir_muita_memoria
  erros = 0
  chutes = []
  pontos_ate_agora = 0

  while erros < 5
    mascara = palavra_mascarada chutes, palavra_secreta
    chute = pede_chute_valido  chutes,erros, mascara
    chutes << chute

    chutou_uma_letra = chute.size == 1
    if chutou_uma_letra
      letra_procurada = chute[0]
      total_encontrado = palavra_secreta.count letra_procurada
      for i in 0..(palavra_secreta.size-1)
        if(palavra_secreta[i] == letra_procurada)
          total_encontrado += 1
        end
      end
      if total_encontrado == 0
        avisa_letra_nao_encontrada
        erros += 1
      else
        avisa_letra_encontra total_encontrado
      end
    else
      acertou = chute == palavra_secreta
      if acertou
        avisar_que_acertou
        pontos_ate_agora += 100
      break
      else
        avisar_que_errou
        pontos_ate_agora -= 30
        erros += 1
      end
    end
  end


  avisa_pontos pontos_ate_agora
  pontos_ate_agora
end

def jogo_da_forca
  nome = da_boas_vindas
  pontos_totais = 0

  avisa_campeao_atual le_rank

  loop do
    pontos_totais += joga nome
    avisa_pontos_totais pontos_totais

    if le_rank[1].to_i < pontos_totais
    salva_rank nome, pontos_totais
    end
    if nao_quer_jogar?
      break
    end
end
end