:- dynamic robot/1.
:- dynamic walks/2.
:- dynamic talks/2.

robot(sparki).
robot(alexa).
robot(jaden).
robot(robocop).

walks(sparki).
talks(alexa).

older(sparki, alexa).
older(sparki, jaden).
older(robocop, jaden).

removeRobot(Robot) :-
  retract(robot(Robot)), fail.
removeRobot(_).

addRobot(Robot) :-
  removeRobot(Robot), assert(robot(Robot)).

firstOlder(Older, Younger) :-
  robot(Older), !, robot(Younger), older(Older, Younger).

:- op(700, xf, exists).

Robot exists :- robot(Robot).
