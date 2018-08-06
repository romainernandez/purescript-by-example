module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)
import Math (sqrt)

diagonal w h = sqrt (w * w + h * h)

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  logShow (diagonal 4.0 3.0)
