# montar um array
# recerber os params
# vai pegar cada um e vai comparar com os presentes no array com os próximos x de shifts
# retornar o resultado

def ceaser_cypher(text, shifts)
  alfabeth = ('a'..'z').to_a
  hash = alfabeth.each_with_index.to_h
  phrase = text.downcase.split("")
  new_phrase = []

  phrase.each do |letter|
     if hash.key?(letter)              # Verifica se a letra está no alfabeto
      current_index = hash[letter]    # Obtém o índice da letra atual
      new_index = (current_index + shifts) % alfabeth.length # Aplica o deslocamento
      new_phrase << alfabeth[new_index] # Adiciona a nova letra ao array
     else
      new_phrase << letter            # Adiciona caracteres que não são letras sem mudar
     end
  end
  new_phrase.join("")
end

puts ceaser_cypher('test', 2)
puts ceaser_cypher("What a string!", 5)
