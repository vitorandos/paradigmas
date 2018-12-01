module Agendas (
  Agenda(Agenda)
, addContact
) where

data Agenda = Agenda {name :: String
                      , email :: String
                      , phoneBook :: [(String, String)]
                    } deriving (Show, Read, Eq)

addContact :: Agenda -> String
addContact (Agenda name email phoneBook) = "Contato registrado com sucesso"
-- ue
