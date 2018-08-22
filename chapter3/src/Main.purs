module Main where

import Prelude (Unit, (*), (+), ($), (>=))
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)
import Data.AddressBook (showEntry)
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
}

exempleEntry = {
  firstName: "Sherlock",
  lastName: "Holmes",
  address: exempleAdress
}

gte2 :: Int -> Boolean
gte2 x = x >= 2

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  logShow $ filter gte2 (1..3)
