module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

iAmANumber =
  let square x = x * x
  in square 42.0

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log $ show iAmANumber
