# frozen_string_literal: true

# LIVECODE - CAN YOU VOTE

# Perguntar a idade do usuário
puts 'How old are you?'
print '> '

# Pegar a resposta e guardar numa variável
age = gets.chomp.to_i

# Checar se a idade é maior ou igual a 16
if age >= 16
  # Printar mensagem se a idade for maior ou igual a 16
  puts "You can vote! Your age is #{age}."
else
  puts "Wait #{16 - age} years..."
end

# Sinalizar o fim do programa
puts 'Goodbye!'
