module Main (module Agendos, main) where

import Agendos(Agenda(Agenda), addContact)

main = do
  let returns = addContact (Agenda "Maria Luiza" "malu@gmail.com" [("31073333", "980118011")])
  return returns
