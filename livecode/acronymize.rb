# frozen_string_literal: true

# 1. criar um método chamado acronymize
def acronymize(frase)
  # 2. separar a frase em palavras (['what', 'the', 'fluff'])
  palavras = frase.split(' ')
  # 3. armazenar as letras em algum lugar (array) - criar uma array vazia
  letras = []
  # 4. pegar a primeira letra de cada palavra e transformar em maiúscula
  for cada_palavra in palavras
    # 5. jogar a letra dentro da array ('W', 'T', 'F')
    letras << cada_palavra[0]
  end
  # 6. juntar as letras
  letras.join.upcase

  # Mesma coisa que o que foi feito acima:
  # frase.split.map { |cada_palavra| cada_palavra[0] }.join.upcase
end

# TODO: criar um método #acronymize que recebe uma sentença e retorna uma string
# com as iniciais de cada palavra em maiúscula
puts acronymize('laugh out loud') == 'LOL'
puts acronymize('as soon as possible') == 'ASAP'
puts acronymize('work in progress') == 'WIP'
puts acronymize('frequently asked Questions') == 'FAQ'
puts acronymize('what the FLUFF') == 'WTF'
puts acronymize('aWay From keyBoarD') == 'AFK'
