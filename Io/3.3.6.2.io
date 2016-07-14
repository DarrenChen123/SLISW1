Number setSlot("division", Number getSlot("/"))

Number setSlot("/",
    method(denominator,
        if((denominator == 0), return(0))
        return(self division(denominator))
    )
)
(1 / 0) println
(2 / 1) println
