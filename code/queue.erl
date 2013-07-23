
-module(queue).
-export([emptyQueue/0, queueEmpty/1, ecqueue/2, dequeue/1, front/1, showQ/1]).

emptyQueue() -> [].

queueEmpty([]) -> True;
queueEmpty(_) -> False.

ecqueue(x, Q) -> Q ++ [x].

dequeue([_|xs]) -> xs;
dequeue([]) -> error("dequeue:empty queue").



