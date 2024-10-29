def salva_rank nome, pontos_totais
  conteudo = "#{nome}\n#{pontos_totais}"
  File.write "rank.txt", conteudo
end

def avisa_pontos_totais pontos_totais
  puts "Vc possui #{pontos_totais} no total"
end

def avisando_escolhendo_palavra
  puts 'Escolhendo palavra secreta...'
end

def avisa_palavra_escolhida palavra_secreta
  puts "A palavra secreta tem #{palavra_secreta.size} letras... boa sorte!"
  palavra_secreta
end

def avisa_chute_efetuado chute
      puts "vc já chutou #{chute}"
end

def avisa_letra_nao_encontrada
      puts "Letra nao encontrada"
end

def avisa_letra_encontra total_encontrado
      puts "Letra encontrada #{total_encontrado} vezes"
end

def avisar_que_acertou
      puts "Parabéns! Acertou!!"
end

def avisar_que_errou
puts "Que pena, vc errou..."
end

def avisa_pontos pontos_ate_agora
  puts "Voce ganhou #{pontos_ate_agora} pontos."
end

def da_boas_vindas
  puts "bem vindo ao jogo"
  puts "qual o seu nome?"
  nome = gets.strip

  puts "\n\n\n\n\n\n"
  puts "Ancioso para jogar com vc, #{nome}! "
  nome
end

def nao_quer_jogar?
  puts "Deseja jogar novamente? (S/N)"
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == 'N'
  nao_quero_jogar
end

def cabecalho_tentativa chutes, erros, mascara
  puts "\n\n\n\n"
  puts "a palavra secreta é #{mascara}"
  puts "Erros até agora #{erros}"
  puts "Chutes até agora: #{chutes}"
end

def pede_um_chute
  puts "Entre com uma letra ou uma palavra"
  chute = gets.strip
  puts "Será que acertou? Vc chutou #{chute}"
  chute
end