module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)

author = { name: "Phil", interests: ["Functional Programming", "Javascript"]}

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  logShow author.name
  logShow author.interests