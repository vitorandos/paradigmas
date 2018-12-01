:- dynamic contact/4.

contact("Maria Luiza", "malu@gmail.com", "31073333", "989118011").
contact("Carlos Alberto", "carlosalberto@gmail.com", "31073300", "988228822").
contact("Carlos Alberto", "carlosalberto@gmail.com", "31073300", "988228822").

addContact(Name, Email, Phone1, Phone2) :-
  removeContact(Name, Email, Phone1, Phone2),
  assert(contact(Name, Email, Phone1, Phone2)).

removeContact(Name) :-
  retract(contact(Name, _, _, _)),
  write("Excluído com sucesso"), nl,
  fail.
%kfkr
getEmails(Name, List) :-
  findall(Email, contact(Name, Email, _, _), List).

:- op(700, xf, exists).

exists(Name) :-
  contact(Name, _, _, _).
