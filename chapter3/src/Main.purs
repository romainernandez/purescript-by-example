module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)
import Data.AddressBook
import Data.List (filter, (..))

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

exempleAdressBook = insertEntry exempleEntry emptyBook :: AddressBook

gte2 :: Int -> Boolean
gte2 x = x >= 2

add5 :: Number -> Number
add5 = otherAdd 5.0

mult2 :: Number -> Number
mult2 x = x * 2.0

add5mult2 :: Number -> Number
add5mult2 = mult2 <<< add5

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  logShow (filter gte2 (1..5))
  logShow $ filter gte2 (1..5)
  -- see https://stackoverflow.com/questions/29881695/what-does-the-triple-less-than-sign-do-in-purescript
  logShow $ add5mult2 2.0