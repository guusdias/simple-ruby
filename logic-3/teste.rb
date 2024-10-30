bemvindo = -> (nome){
  puts "Bem vindo #{nome}"
}

minhafunc = bemvindo
minhafunc.call("Gustavo")

# Bem vindo Gustavo