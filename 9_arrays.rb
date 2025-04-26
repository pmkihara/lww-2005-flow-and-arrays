# frozen_string_literal: true

# ARRAYS

# Inicializar uma array
# array vazia
empty_array = []
# array com elementos
avengers = ['Captain America', 'IronMan', 'Black Widow']

# CRUD
# Read - acessando elementos da array
# nome_da_array[index_do_elemento]
# puts avengers[0]
# puts avengers[-1]
# p avengers[0..1]

# Create - adicionando elementos na array
# Adicionar via #push
avengers.push('Hawkeye', 'Thor')

# Adicionar via <<
avengers << 'Hulk'

# Update - reatribuindo valores de elementos da array
# nome_da_array[index_do_elemento] = novo_valor
avengers[-1] = 'The Hulk'

# Delete - removendo elementos da array
# Via #delete (remove pelo valor do elemento)
# Cuidado! O #delete remove todos os elementos com o valor passado
avengers.delete('IronMan')

# Via #delete_at (remove pelo index do elemento)
avengers.delete_at(2)
# QUANTIDADE DE ELEMENTOS DA ARRAY (3 métodos)
p avengers.length
p avengers.size
p avengers.count

# ITERAÇÃO - Um loop com cada elemento da array
# #each é a mesma coisa que o for..in, porém o #each é considerado o melhor
# estilo para iterar sobre arrays em Ruby
avengers.each do |current_avenger|
  puts "#{current_avenger} is in the Avengers."
end

# for current_avenger in avengers
#   puts "#{current_avenger} is in the Avengers."
# end
