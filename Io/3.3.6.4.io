List myAverage := method(
        sum := 0
        self foreach(k,
            if((k type != "Number"),
                        Exception raise("There is a NaN-value in the list, please check your list."),
            sum = (sum + k))
        )
        return (sum / (self size))
)

list(1, 2, 3) myAverage println
list(1, "a", 3) myAverage println
