module Data.AddressBook where

import Prelude
import Data.List.Lazy.Types (List, cons)
import Control.Plus (empty)
import Data.Maybe (Maybe)
import Data.List (head, filter)


type Entry = {
  firstName :: String,
  lastName :: String,
  address :: Address
}

type Address = {
  street :: String,
  city :: String,
  state :: String
}

type AddressBook = List Entry

showEntry :: Entry -> String
showEntry entry = entry.firstName <> ", " <>
                  entry.lastName <> ", " <>
                  showAdress entry.address

showAdress :: Address -> String
showAdress address = address.street <> ", " <>
                  address.city <> ", " <>
                  address.state

emptyBook :: AddressBook
emptyBook = empty

insertEntry :: Entry -> AddressBook -> AddressBook
insertEntry  = cons

findEntry :: String -> String -> AddressBook -> Maybe Entry
findEntry firstName lastName adressBook = head $ filter filterEntry adressBook
  where
    filterEntry :: Entry -> Boolean
    filterEntry entry = firstName == entry.firstName && lastName == entry.lastName