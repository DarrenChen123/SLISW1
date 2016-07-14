module Main where
allEven :: [Integer] -> [Integer]
allEven numbers = [evens | evens <- numbers, even evens]
