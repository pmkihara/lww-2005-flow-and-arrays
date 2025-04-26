# frozen_string_literal: true

# LIVECODE - DESCOBRIR O PREÇO

# Pegar um valor randômico entre 1 e 5, que será o preço secreto
price = rand(1..5)

# Perguntar um chute ao usuário
puts 'Guess the price ($1 to $5)'
print '> '

# Pegar a resposta e guardar em uma variável
guess = gets.chomp.to_i

# Se o usuário acertar o preço, avisar que ele ganhou
until guess == price
  puts 'Try again.'
  puts 'Guess the price ($1 to $5)'
  print '> '
  guess = gets.chomp.to_i
end

puts "The price was #{price}, you won!"
# if guess == price
# else
# end

# TODO: Se o usuário não acertar, pedir uma nova tentativa até ele acertar o preço
# TODO2: Refatorar o código usando until
