module Agendos (
  Agenda(Agenda)
, addContact
) where

data Agenda = Agenda {name :: String
                      , email :: String
                      , phoneBook :: [(String, String)]
                    } deriving (Show, Eq, Read)

addContact :: Agenda -> String
addContact (Agenda name email phoneBook) = "Contato adicionado com sucesso"
