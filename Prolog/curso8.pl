word(astante,  a,s,t,a,n,t,e).
word(astoria,  a,s,t,o,r,i,a).
word(baratto,  b,a,r,a,t,t,o).
word(cobalto,  c,o,b,a,l,t,o).
word(pistola,  p,i,s,t,o,l,a).
word(statale,  s,t,a,t,a,l,e).

:- dynamic f/1.
f(a).
   f(b).

   g(a).
   g(b).

   h(b).

   k(X):-  f(X),  g(X),  h(X).

   is_digesting(X,Y)  :-  just_ate(X,Y).
   is_digesting(X,Y)  :-
                   just_ate(X,Z),
                   is_digesting(Z,Y).

   just_ate(mosquito,blood(john)).
   just_ate(frog,mosquito).
   just_ate(stork,frog).
