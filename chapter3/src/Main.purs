module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)

author = { name: "Phil", interests: ["Functional Programming", "Javascript"]}

add :: Int -> Int -> Int
add a b = a + b

otherAdd :: Number -> Number -> Number
otherAdd = \a b -> a + b

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  logShow $ add 1 2
  logShow $ otherAdd 1.0 2.1