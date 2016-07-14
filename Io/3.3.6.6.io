Matrix := Object clone
Matrix transpose := method(
    if(self data isEmpty) then(return nil)
    outerLen := self data size
    innerLen := self data at(0) size

    newData := Matrix clone
    newData dim(innerLen, outerLen);
    for(i, 0, outerLen - 1, 
        for(j, 0, outerLen - 1,
            newData set(j, i, self get(i,j))
        )
    )
    self data = newData data
)
