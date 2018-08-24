module Data.AddressBook where

import Prelude

import Control.Plus (empty)
import Data.List (List(..), filter, head)
import Data.Maybe (Maybe)

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
insertEntry  = Cons

findEntry :: String -> String -> AddressBook -> Maybe Entry
findEntry firstName lastName = head <<< filter filterEntry
  where
    filterEntry :: Entry -> Boolean
    filterEntry entry = firstName == entry.firstName && lastName == entry.lastName

printEntry :: String -> String -> AddressBook -> Maybe String
printEntry firstName lastName addressBook = map showEntry $ findEntry firstName lastName addressBook

findEntryWithStreetAddress :: String -> AddressBook -> Maybe Entry
findEntryWithStreetAddress streetAddress = head <<< filter filterEntry
  where
    filterEntry :: Entry -> Boolean
    filterEntry entry = streetAddress == entry.address.street