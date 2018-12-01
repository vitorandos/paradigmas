%% Copyright (c) Michele Baldessari - 2000
%% michele@pupazzo.org

%% This is public domain stuff, do what you want with it. Don't cheat
%% with your Logic assignments though ;)

%% load with : consult('dijkstra.prolog').
%% go.


%% The Milan city database
%% ------------------------------------------------------------------------
%% From                     To                              C  B  F   Dist.
%% ------------------------------------------------------------------------
connected(stazione_centrale,       chiesa_s_giovanni,       y, y, y,  600).
connected(stazione_centrale,       porta_genova,            y, y, y,  800).
connected(chiesa_s_giovanni,       stazione_centrale,       y, y, y,  600).
connected(chiesa_s_giovanni,       via_montenapoleone,      y, y, y,  700).
connected(chiesa_s_giovanni,       piazza_santo_stefano,    y, y, y,  700).
connected(porta_genova,            stazione_centrale,       y, y, y,  800).
connected(porta_genova,            piazza_santo_stefano,    y, y, y,  400).
connected(porta_genova,            via_golgi,               y, y, y,  900).
connected(porta_genova,            piazzale_oberdan,        n, n, y, 1000).
connected(via_montenapoleone,      chiesa_s_giovanni,       y, y, y,  700).
connected(via_montenapoleone,      ponte_vecchio,           y, n, n, 1500).
connected(via_montenapoleone,      ponte_vecchio,           n, y, y, 1500).
connected(piazza_santo_stefano,    chiesa_s_giovanni,       y, y, y,  700).
connected(piazza_santo_stefano,    porta_genova,            y, y, y,  400).
connected(piazza_santo_stefano,    piazzale_oberdan,        y, y, y,  800).
connected(via_golgi,               porta_genova,            y, y, y,  900).
connected(via_golgi,               piazzale_oberdan,        y, y, y,  300).
connected(via_golgi,               piazza_grande,           n, y, y,  500).
connected(via_golgi,               ghisolfa,                y, n, n, 1300).
connected(piazzale_oberdan,        piazza_santo_stefano,    y, y, y,  800).
connected(piazzale_oberdan,        via_golgi,               y, y, y,  300).
connected(piazzale_oberdan,        ponte_vecchio,           y, y, y,  600).
connected(piazzale_oberdan,        citta_studi,             y, y, y,  500).
connected(piazzale_oberdan,        parco_lambrate,          n, n, y,  400).
connected(piazzale_oberdan,        piazza_grande,           n, y, y,  500).
connected(ponte_vecchio,           via_montenapoleone,      y, y, y, 1500).
connected(ponte_vecchio,           via_montenapoleone,      n, y, y, 1500).
connected(ponte_vecchio,           piazzale_oberdan,        y, y, y,  600).
connected(ponte_vecchio,           viale_roma,              y, y, y,  600).
connected(piazza_grande,           via_golgi,               y, y, y,  500).
connected(piazza_grande,           ghisolfa,                n, y, y,  700).
connected(piazza_grande,           piazzale_oberdan,        n, y, y,  500).
connected(piazza_grande,           parco_lambrate,          n, y, y,  300).
connected(ghisolfa,                piazza_grande,           y, y, y,  700).
connected(ghisolfa,                piazzale_piola,          n, y, y,  300).
connected(ghisolfa,                senigaglia,              y, y, y,  500).
connected(ghisolfa,                viale_umbria,            y, n, n, 1400).
connected(citta_studi,             piazzale_oberdan,        y, y, y,  500).
connected(citta_studi,             parco_lambrate,          n, y, y,  300).
connected(citta_studi,             viale_roma,              n, n, y, 1200).
connected(citta_studi,             san_siro,                y, y, y,  700).
connected(parco_lambrate,          piazzale_oberdan,        n, n, y,  400).
connected(parco_lambrate,          piazza_grande,           n, y, y,  300).
connected(parco_lambrate,          citta_studi,             n, y, y,  300).
connected(parco_lambrate,          piazzale_piola,          n, n, y,  600).
connected(viale_roma,              ponte_vecchio,           y, y, y,  600).
connected(viale_roma,              citta_studi,             n, n, y, 1200).
connected(viale_roma,              via_lampedusa,           y, y, y, 1000).
connected(viale_roma,              via_lampedusa,           n, n, y, 1200).
connected(piazzale_piola,          ghisolfa,                n, y, y,  300).
connected(piazzale_piola,          parco_lambrate,          n, n, y,  600).
connected(piazzale_piola,          san_siro,                n, y, y,  200).
connected(piazzale_piola,          mercatino_di_natale,     n, n, y,  400).
connected(senigaglia,              ghisolfa,                y, y, y,  500).
connected(senigaglia,              mercatino_di_natale,     n, n, y,  100).
connected(senigaglia,              navigli,                 y, y, y,  300).
connected(senigaglia,              viale_monza,             n, y, y,  100).
connected(viale_umbria,            ghisolfa,                y, n, n, 1400).
connected(viale_umbria,            via_lampedusa,           y, y, y,  700).
connected(viale_umbria,            navigli,                 y, y, y,  300).
connected(via_lampedusa,           viale_roma,              y, y, y, 1000).
connected(via_lampedusa,           viale_roma,              n, n, y, 1200).
connected(via_lampedusa,           viale_umbria,            y, y, y,  700).
connected(via_lampedusa,           san_siro,                y, y, y,  600).
connected(via_lampedusa,           mercatino_di_natale,     n, y, y,  400).
connected(san_siro,                citta_studi,             y, y, y,  700).
connected(san_siro,                piazzale_piola,          n, y, y,  200).
connected(san_siro,                via_lampedusa,           y, y, y,  600).
connected(mercatino_di_natale,     piazzale_piola,          n, n, y,  400).
connected(mercatino_di_natale,     senigaglia,              n, n, y,  100).
connected(mercatino_di_natale,     navigli,                 n, n, y,  200).
connected(mercatino_di_natale,     via_lampedusa,           n, y, y,  400).
connected(navigli,                 senigaglia,              n, y, y,  200).
connected(navigli,                 viale_umbria,            y, y, y,  300).
connected(navigli,                 mercatino_di_natale,     n, y, y,  200).
connected(navigli,                 viale_monza,             y, y, y,  100).
connected(viale_monza,             senigaglia,              y, y, y,  100).
connected(viale_monza,             navigli,                 n, y, y,  100).

go :-
        write('--------------------------------------------'),nl,nl,nl,
	write('All the Paths from : Stazione_centrale  to : San Siro by Car '), nl,
	forall(some_path(y, _, _, stazione_centrale, san_siro, Path1),
	       (write(Path1), remove_first(Path1,DP1), distance(stazione_centrale, san_siro, DP1, X1), write(' Dist. :'),
                write(X1),  nl)), nl,
	write('Shortest Path from : Stazione Centrale to San Siro by Car '), nl,
	minimal_path(y, _, _, stazione_centrale, san_siro, _, Path2),
	write(Path2), remove_first(Path2,DP2), write(' Dist. :'),
        distance(stazione_centrale, san_siro, DP2, X2), write(X2), nl, nl,
	write('Shortest Path from : Stazione Centrale to San Siro by Walk '), nl,
	minimal_path(_, _, y, stazione_centrale, san_siro, _, Path3),
	write(Path3), remove_first(Path3, DP3), distance(stazione_centrale, san_siro, DP3, X3),  write(' Dist. :'),
        write(X3), nl, nl, nl.


%%  distance(From, To, Path, Distance)
%%  -----------------------------------------------------------------------------
%%  Calculates the distance From-To along the specified Path (accumulator)

distance(From,To,[H|T],X) :- distance2(From,To,[H|T],0,X).
distance2(To, To, [], _, 0).
distance2(From, To, [H|T], Tmp, D) :- distance2(H, To, T, Tmp, N), connected( From, H,_,_,_, D1), D is N + D1.

%%  some_path(C, B, F, From, To, Path)
%%  ----------------------------------------------------------------------------
%%  it is true when Path is a possible connection between From and To.
%%  It is also possible to define if we want to go by (C)ar, (B)icycle or (F)oot

some_path(C, B, F, From, To, [From|Path]) :-
	some_path(C, B, F, From, To, [From], Path).

some_path(_, _, _, To,   To, _Avoiding,  []).  %% Reached the last node

%%  memberchk is different from member in the sense that it has no options..
%%  it simply finds the first one and then it cuts the (!) the other options
%%  The  -> operator is used as following : If -> Then; _Else

some_path(C, B, F, From, To,  Avoiding0, Stack) :-
	connected(From, Next, C1, B1, F1, _), (C=C1, B=B1, F=F1),
	(  memberchk(Next, Avoiding0) -> fail ;  Stack = [Next|Stack0],	Avoiding = [Next|Avoiding0] ),
	some_path(C, B, F, Next, To, Avoiding, Stack0).


%%  minimal_edge(C, B, F, From, To, Cost)
%%  -------------------------------------------------------------------------
%%  it is true when From-To a minimal cost edge is where again C,B and F
%%  represent Car,Bicycle and Foot.

minimal_edge(C, B, F, From, To, Cost) :-
	all_edges(C, B, F, Edges),
	keysort(Edges, Sorted),
	Sorted = [Cost-_|_],
	equivalent_member(Sorted, Cost, p(From,To)).

all_edges(C, B, F, Edges) :-
	findall(D-p(V,W), connected(V, W, C, B, F, D), Edges).

equivalent_member([K-V|_], K, V).
equivalent_member([K-_|KVs], K, V) :-
	equivalent_member(KVs, K, V).


%%  minimal_path(C, B, F, From, To, Cost, Path)
%%  -------------------------------------------------------------------------
%%  it is true when Path is the minimal path (in terms of cost) that connects
%%  From and To. As usual C,B and F represent how we get to detination.

minimal_path(C, B, F, From, To, Cost, Path) :-
	construct_graph(C, B, F, Graph),
	dijkstra(Graph, From, To, Cost, Path).

construct_graph(C, B, F, Graph) :-
	findall(From-Tos,
		( connected(From, _, _, _, _, _),
		  findall(D-To, connected(From, To, C, B, F, D), DTs),
	          sort(DTs, Tos)
		),
		FTs),
	sort(FTs, Graph).


%%  Dijkstra Algorithm to find out the shortest path in a directed graph
%%  ----------------------------------------------------------------------

dijkstra(Graph, Source, Drain, Cost, Path) :-
	dijkstra_(Graph, [0-p(Source,[Source])], Drain, Cost, PathStack),
	reverse(PathStack, Path).

dijkstra_(T, Lambda, Drain, Cost, Path) :-
	minimal_vertex(T, Lambda, Lu, U, Pu, Uads),
	(  U == Drain -> Cost = Lu, Path = Pu ;
	   recompute_lambda(Uads, T, Pu, Lu, Lambda, Lambda2),
	   ord_del_element(T, U-Uads, T2),
	   dijkstra_(T2, Lambda2, Drain, Cost, Path)
	).

minimal_vertex(Sgraph, CVlist, C, V, P, Ads) :-
	keysort(CVlist, Sorted),
	member(C-p(V,P), Sorted),
	memberchk(V-Ads, Sgraph),
	!.

recompute_lambda([], _T, _Pu, _Lu, Lambda,  Lambda).
recompute_lambda([We-V|R], T,  Pu,  Lu, Lambda0, Lambda) :-
	(  memberchk(V-_, T)
	-> LuWe is Lu + We,
	   (  memberchk(Lv-p(V,Pv), Lambda0)
	   -> (  Lv > LuWe
	      -> ord_del_element(Lambda0, Lv-p(V,Pv), Lambda1),
	         ord_add_element(Lambda1, LuWe-p(V,[V|Pu]), Lambda2)
	      ;  Lambda0 = Lambda2
	      )
	   ;  ord_add_element(Lambda0, LuWe-p(V,[V|Pu]), Lambda2)
	   )
	;  Lambda0 = Lambda2
	),
	recompute_lambda(R, T, Pu, Lu, Lambda2, Lambda).


%%  A bunch of predicates to insert and remove elements from sorted lists
%%  and remove_first which is just used in the distance predicate
%%  ---------------------------------------------------------------------
remove_first([_|T],T).

ord_add_element([], El, [El]).
ord_add_element([H|T], El, Add) :- compare(Order, H, El), addel(Order, H, T, El, Add).

addel(<, H, T,  El, [H|Add]) :- ord_add_element(T, El, Add).
addel(=, H, T, _El, [H|T]).
addel(>, H, T,  El, [El,H|T]).

ord_del_element([], _El, []).
ord_del_element([H|T], El, Del) :- compare(Order, H, El), delel(Order, H, T, El, Del).

delel(<,  H, T,  El, [H|Del]) :- ord_del_element(T, El, Del).
delel(=, _H, T, _El, T).
delel(>,  H, T, _El, [H|T]).
