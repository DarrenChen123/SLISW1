module Main where
import Data.Ord

mySortBy f (x:xs) = myInsertBy f x $ mySortBy f xs
  where myInsertBy _ x [] = []
        myInsertBy f x (y:ys) | f x y == GT = y:myInsertBy f x ys
                              | otherwise = x:y:ys 
