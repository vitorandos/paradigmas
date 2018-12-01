module Main (module Agendas, main) where

import Agendas(Agenda(Agenda), addContact)

main = do
  let returns = addContact (Agenda "Maria Luiza" "malu@gmail.com" [("31073333", "980118011")])
  return returns
