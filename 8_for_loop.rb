# frozen_string_literal: true

# Printar os números de 1 a 3 usando for..in com array = [1, 2, 3]
for current_number in [1, 2, 3]
  puts "The number now is #{current_number}"
end

# TODO: Fazer a mesma coisa com range
for current_number in 1..3
  puts "The number now is #{current_number}"
end

# TODO: Fazer a mesma coisa usando o while
current_number = 1
while current_number <= 3
  puts "The number now is #{current_number}"
  current_number += 1
end
