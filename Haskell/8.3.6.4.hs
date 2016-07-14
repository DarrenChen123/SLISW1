module Main where
two x = [x, x + 2 ..]
four y = [y, y + 4 ..]
seven x y = zipWith (+) (two x) (four y)
