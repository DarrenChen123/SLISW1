matrix := list(
        list(1, 2, 3),
        list(4, 5, 6),
        list(7, 8, 9)
)

data := File open("test.txt")

data File write(matrix serialized)
data close

readData := File open("test.txt")
readData readLine println
readData close

readData2 := doFile("test.txt")
readData2 println


