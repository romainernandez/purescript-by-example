module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)
import Data.AddressBook (Entry, Address, filterEntry)

author = { name: "Phil", interests: ["Functional Programming", "Javascript"]}

add :: Int -> Int -> Int
add a b = a + b

otherAdd :: Number -> Number -> Number
otherAdd = \a b -> a + b

indentedAdd :: Int -> Int -> Int
indentedAdd a b = a
  + b

exemple :: Int -> Int -> Int -> Int
exemple x y z = foo + bar
  where
    foo = x * y
    bar = y * z

exempleAdress = {
  street: "221b Baker St",
  city: "London",
  state: "UK"
} :: Address

exempleEntry = {
  firstName: "Sherlock",
  lastName: "Holmes",
  address: exempleAdress
}  :: Entry

gte2 :: Int -> Boolean
gte2 x = x >= 2

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  logShow $ filterEntry "Roger" "Rabbit" exempleEntry
  logShow $ filterEntry "Sherlock" "Holmes" exempleEntry
