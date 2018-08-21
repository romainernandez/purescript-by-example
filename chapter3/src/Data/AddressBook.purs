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