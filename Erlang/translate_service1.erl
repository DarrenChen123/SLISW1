-module(translate_service1).
-behaviour(supervisor).
-export([loop/0, translate/1]).
-export([start/0]).
-export([init/1]).
-export([start_service/0]).


loop() ->
    receive
        {From, "casa"} ->
            From ! "house",
            loop();

        {From, "blanca"} ->
            From ! "white",
            loop();
% If the Word is not recognized, shutdown the process.
        {From, M} ->
            From ! "I don't understand.",
            exit({M, "Not Underatand!"})

    end.

% Add an atom(translator) to do the translation
translate(Word) ->
    translator ! {self(), Word},
    receive
        Translation -> Translation
    end.

start() ->
    io:format("Start translating program~n"),
    register(translator, spawn_link(translate_service, loop, [])),
    {ok, whereis(translator)}.

% CALL BACK function
init(_) ->
    {ok, {{one_for_one, 1, 60},
            [{translate_service, {translate_service, start, []},
                    permanet, brutal_kill, worker, [translate_service]}]}}.

% Use the supervisor to monitor the service and keep it running.
start_service() ->
    io:format("Start service~n"),
    supervisor:start_link(translate_service, []).
