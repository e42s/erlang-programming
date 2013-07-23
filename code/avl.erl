-module(avltree).
-export([emptyAVL/0, addAVL/2]).


emptyAVL() -> emptyAVL.


rotateLeft(emptyAVL) -> emptyAVL;
rotateLeft ({V, {LV, LFLF, LFRT}, RT}) -> {LV, LFLF, {V, LFRT, RT}}.

rotateRight(emptyAVL) -> emptyAVL;
rotateRight({V, LF, {RV, RTLF, RTRT}}) -> {RV, {V, LF, RTLF}, RTRT}.


dRotateRightLeft({V, LF, {RV, {RTLV, RTLFLF, RTLFRT}, RTRT}}) ->
    {RTLV, {V, LF, RTLFLF}, {RV, RTLFRT, RTRT}}.
dRotateLeftRight({V, {LV, LFLF, {LFRV, LFRTLF, LFRTRT}}, RT}) ->
    {LFRV, {LV, LFLF, LFRTLF}, {V, LFRTRT, RT}}.


height(emptyAVL) -> 0;
height({ _, LF, RT}) -> 1 + max(height(LF), height(RT)).


addAVL(I, emptyAVL) -> {I, emptyAVL, emptyAVL};

addAVL(I, {V, LF, RT}) when I < V ->
    Newlf = {Newlfv, _a, _b} = addAVL(I, LF), 
    case height(Newlf) - height(RT) =:= 2 of
	true -> 
	    if I < Newlfv ->
		    rotateLeft({V, Newlf, RT});
	       I >= Newlfv -> 
		    dRotateLeftRight({V, Newlf, RT})
	    end;
	false -> {V, Newlf, RT}
    end;

addAVL(I, {V, LF, RT}) when I >= V ->
    Newrt = {Newrtv, _a, _b} = addAVL(I, RT),
    case height(Newrt) - height(LF) =:= 2 of
	true -> 
	    if I > Newrtv ->
		    rotateRight({V, LF, Newrt});
	       I >= Newrtv -> 
		    dRotateRightLeft({V, LF, Newrt})
	    end;
	false -> {V, LF, Newrt}
    end