module Main where
reverseList :: [Integer] -> [Integer]
reverseList [h] = [h]
reverseList (h:t) = reverseList(t) ++ [h]
