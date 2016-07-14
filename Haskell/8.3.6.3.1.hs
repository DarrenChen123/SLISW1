module Main where
import Data.Char

parser :: String -> Float

parser value = read strippedValue :: Float
  where
    strippedValue = 
      foldl
        (\ newString c ->
          if (isDigit c || c == '.') then
            newString ++ [c]
          else
            newString
          )
          " "
          value
