2DList := List clone
2DList dim := method(x, y,
        if((self proto type == "List"),
            return 2DList clone dim(x, y)
        )
        self setSize(x)
        for(i, 0, (x - 1), 1,
                        self atPut(i, (list() setSize(y)))
        )
        return self
)

2DList set := method(x, y, value,
        self at(x) atPut(y, value)
        return self
)

2DList get := method(x, y,
        return (self at(x) at(y))
)

matrix := 2DList clone dim(3, 3)
for(i, 0, 2, 1, for(n, 0, 2, 1, matrix set(i, n, i+n))) println
matrix get(1, 1) println
