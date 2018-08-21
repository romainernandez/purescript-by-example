module Data.AddressBook where

import Prelude
import Data.List.Lazy.Types (List)

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