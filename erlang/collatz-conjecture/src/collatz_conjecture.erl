-module(collatz_conjecture).

-export([steps/1]).

steps(N) when N > 0 -> steps(N, 0);
steps(N) when N =< 0 -> erlang:error(badarg).

steps(1, Steps) -> Steps;
steps(N, Steps) when N > 1 ->
    case N rem 2 of
        0 -> steps(N div 2, Steps + 1);
        1 -> steps(3 * N + 1, Steps + 1)
    end.
