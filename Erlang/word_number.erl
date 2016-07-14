-module(word_number).
-export([number/1]).
-export([words/3]).

number(Text) -> length(words(Text, [], [])).

words(Text, Words, Word) -> 
    if length(Text) == 0 ->
            if length(Word) /= 0 ->
                    lists:append(Words, [Word]);
                true ->
                    Words
            end;
        true ->
            [First | Rest] = Text,
            if First == ($ ) ->
                    if length(Word) == 0 ->
                            words(Rest, Words, Word);
                        true ->
                            words(Rest, lists:append(Words, [Word]), [])
                    end;
                true ->
                    words(Rest, Words, lists:append(Word,[First]))
            end
    end.

