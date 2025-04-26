# frozen_string_literal: true

# TODO: jogo de pedra-papel-tesoura

# Guardar as mãos válidas em uma array (para facilitar na hora de usar)
maos = %w[pedra papel tesoura]

# Guardar os pontos de cada um
vitorias_do_computador = 0
vitorias_do_usuario = 0

# Inicializar uma variável user com o valor nil porque vamos precisar dela no loop
user = nil

until user == 'sair' || vitorias_do_computador == 3 || vitorias_do_usuario == 3
  # Pegar uma mão randômica para o computador
  # Queremos que fique dentro do loop para que o computador tenha uma mão diferente
  # em cada rodada!
  computador = maos.sample

  # Mostrar as opções para o usuário e pedir para escolher uma mão
  puts "Escolha uma das mãos: #{maos.join(' | ')} ou sair"
  print '> '
  user = gets.chomp

  # Quebrar o loop se o usuário escoher sair (para não rodar as linhas abaixo)
  break if user == 'sair'

  # Até que o usuário coloque uma mão válida (#include?), pedir novamente uma opção
  until maos.include?(user)
    puts 'Tente novamente'
    print '> '
    user = gets.chomp
  end

  # Comparar as mãos:
  # - Empate quando a mão do usuário e a mão do computador forem iguais
  # - Usuário ganha quando:
  #   - Escolhe PEDRA e o computador escolhe TESOURA; ou
  #   - Escolhe TESOURA e o computador escolhe PAPEL; ou
  #   - Escolhe PAPEL e o computador escolhe PEDRA
  if user == computador
    puts 'Empate'
  elsif (user == 'pedra' && computador == 'tesoura') ||
        (user == 'tesoura' && computador == 'papel') ||
        (user == 'papel' && computador == 'pedra')
    puts 'Você ganhou'
    vitorias_do_usuario += 1
  else
    puts 'Você perdeu'
    vitorias_do_computador += 1
  end

  # Printar as mãos
  puts "Você escolheu #{user}, o computador escolheu #{computador}"
  puts "Pontuação: computador = #{vitorias_do_computador} | você = #{vitorias_do_usuario}"
end
