-module(printMessage).
-export([message/1]).

message(Content) ->
    case Content of
        success -> io:format("success~n");
        {error, Message} -> 
            io:format("error: " ++ Message ++ "~n")
end.
