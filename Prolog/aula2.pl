minimo(X,Y,X):- X =< Y.
minimo(X,Y,Y):-X > Y.

cliente(ana,123,bradesco). cliente(jose,456,itau).
executa :- cliente(Nome,Conta,Agencia), write(Nome),write(' tem conta '),write(Conta), write(' na agencia '),write(Agencia),nl.
