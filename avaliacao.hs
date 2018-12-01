avaliacaoFisica diasPorSemana horasPorDia
  |base <= 0 = "Voce precisa praticar esporte"
  |base <= 3 = "Voce esta praticando o minimo necessario!"
  |base <= 7 = "Voce esta levando a serio a pratica de esportes"
  |otherwise = "Voce eh um atleta?"
  where base = diasPorSemana * horasPorDia
