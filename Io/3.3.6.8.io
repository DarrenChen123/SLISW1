standardIO := File standardInput
guess := nil
counter := 0

answer := (Random value(99) + 1) floor

while(counter < 10,
        "Guess a number(1...100):" println
        guess := standardIO readLine() asNumber()
        if((guess == answer),
                        "You are right!" println;break,
                        if((guess > answer), 
                                        "Too big" println,
                                        "Too small" println)
        )
    counter = counter + 1
)
