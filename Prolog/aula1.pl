possivel_suspeito(fred).
possivel_suspeito(mary).
possivel_suspeito(jane).
possivel_suspeito(george).
crime(roubo,john,terca,parque).
crime(roubo,robin,quinta,bar).
crime(assalto,jim,quarta,bar).
estava(fred,terca,parque).
inveja(fred,john).
principal_suspeito(Pessoa,Crime):- crime(Crime,Vitima,Dia,Lugar),
  possivel_suspeito(Pessoa),
  estava(Pessoa,Dia,Lugar),
  tem_motivo_contra(Pessoa,Vitima).
principal_suspeito(desconhecido,Crime).
tem_motivo_contra(Pessoa,Vitima):- inveja(Pessoa,Vitima).
