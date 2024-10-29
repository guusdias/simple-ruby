
def da_boas_vindas
  puts "bem vindo ao jogo"
  puts "qual o seu nome?"
  nome = gets.strip

  puts "\n\n\n\n\n\n"
  puts "Ancioso para jogar com vc, #{nome}! "
  nome
end

def pede_dificuladade
  puts "Qual o nível de dificuldade que deseja? (1 fácil, 5 difícil)"
  dificuldade = gets.to_i
  dificuldade
end

def sorteia_numero_secreto(dificuldade)
  case dificuldade
  when 1
    max = 30
  when 2
    max = 60
  when 3
    max = 100
  when 4
    max = 150
  else
    max = 200
  end
  puts 'Escolhendo um número secreto '
  sorteado = rand(max) + 1
  puts "Escolha um número secreto entre 1 e #{max}..."
  puts "Escolhido... que tal adivinhar hoje o nosso número secreto?"
  sorteado
end

def pede_um_numero(tentativa,limite_de_tentantiva, chutes)
    puts "\n\n"
  puts "tentativa #{tentativa.to_s} de #{limite_de_tentantiva.to_s}"
  puts "Chutes até agora: #{chutes.to_s}"
  puts "Entre com o numero "
  chute = gets.strip
  puts "vc chutou #{chute}"
  chute
end

def verifica_se_acertou(chute, numero_secreto)
  acertou  = numero_secreto == chute.to_i

  if acertou
    puts 'Acertou'
    return true
  end
    maior = numero_secreto > chute.to_i
    if maior
      puts 'Errou pq o numero é maior'
    else
      puts 'Errou pq o numero é menor'
    end
    false
end

def joga(nome, dificuldade)
  limite_de_tentantiva = 5
  numero_secreto = sorteia_numero_secreto(pede_dificuladade)
  pontos_ate_agora = 1000
  chutes = []

for tentativa in 1..limite_de_tentantiva
  chute = pede_um_numero tentativa, limite_de_tentantiva, chutes
  chutes << chute #coloca o elemento dentro do array

if nome == 'Gustavo'
  puts 'acerto, miseravi'
  break
end

pontos_a_perder = (chute.to_i - numero_secreto.to_i).abs/2.0

pontos_ate_agora -= pontos_a_perder

 break if verifica_se_acertou(chute, numero_secreto)
end

puts "vc ganhou #{pontos_ate_agora} pontos."
end

def quer_jogar
  puts "Deseja jogar novamente? (S/N)"
quer_jogar = gets.strip
quer_jogar.upcase == 'S'
end

  nome = da_boas_vindas
  dificuldade = pede_dificuladade

loop do
  joga nome, dificuldade
  if !quer_jogar
    break
  end
end
