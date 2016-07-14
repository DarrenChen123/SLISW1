2d_array := list(
            list(1, 2, 3),
            list(4, 5, 6),
            list(7, 8, 9)
)

sum := 0

2d_array foreach(r, r foreach(v, (sum = sum + v)))
"The sum of this 2D array is: " println
sum println

