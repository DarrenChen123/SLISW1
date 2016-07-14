module Main where
import Data.List

mySort list
  | null list = list
  | otherwise = [x] ++ mySort (delete x list)
      where x = minimum list
