-module(stack).
-export([emptyStack/0, stackEmpty/1, push/2, pop/1, top/1]).

emptyStack() -> [].

stackEmpty([]) -> true;
stackEmpty(_) -> fase.

push(x, xs) -> [x|xs].

pop([]) -> error("pop from an empty stack");
pop(_|xs) -> xs.

top([]) -> error("top from an empty stack");
top([x|_]) -> x.

