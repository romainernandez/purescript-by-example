module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)
import Math (sqrt, pi)
import Global (readInt)

diagonal w h = sqrt (w * w + h * h)

circleArea r = pi * r * r

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  logShow (readInt 8 "12")  -- convert 12 in base 8
