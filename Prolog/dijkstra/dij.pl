/*  File:    dijkstra_av.pl
    Author:  Carlo,,,
    Created: Aug  3 2012
    Modified:Oct 28 2012
    Purpose: learn graph programming with attribute variables
*/

:- module(dijkstra_av, [dijkstra_av/3,
            dijkstra_edges/3]).

dijkstra_av(Graph, Start, Solution) :-
    setof(X, Y^D^(member(d(X,Y,D), Graph) ; member(d(Y,X,D), Graph)), Xs),
    length(Xs, L),
    length(Vs, L),
    aggregate_all(sum(D), member(d(_, _, D), Graph), Infinity),
    catch((algo(Graph, Infinity, Xs, Vs, Start, Solution),
           throw(sol(Solution))
          ), sol(Solution), true).

dijkstra_edges(Graph, Start, Edges) :-
    dijkstra_av(Graph, Start, Solution),
    maplist(nodes_to_edges(Graph), Solution, Edges).

nodes_to_edges(Graph, s(Node, Dist, Nodes), s(Node, Dist, Edges)) :-
    join_nodes(Graph, Nodes, Edges).

join_nodes(_Graph, [_Last], []).
join_nodes(Graph, [N,M|Ns], [e(N,M,D)|Es]) :-
    aggregate_all(min(X), member(d(N, M, X), Graph), D),
    join_nodes(Graph, [M|Ns], Es).

algo(Graph, Infinity, Xs, Vs, Start, Solution) :-
    pairs_keys_values(Ps, Xs, Vs),
    maplist(init_adjs(Ps), Graph),
    maplist(init_dist(Infinity), Ps),
    %ord_memberchk(Start-Sv, Ps),
    memberchk(Start-Sv, Ps),
    put_attr(Sv, dist, 0),
    time(main_loop(Vs)),
    maplist(solution(Start), Vs, Solution).

solution(Start, V, s(N, D, [Start|P])) :-
    get_attr(V, name, N),
    get_attr(V, dist, D),
    rpath(V, [], P).

rpath(V, X, P) :-
    get_attr(V, name, N),
    (   get_attr(V, previous, Q)
    ->  rpath(Q, [N|X], P)
    ;   P = X
    ).

init_dist(Infinity, N-V) :-
    put_attr(V, name, N),
    put_attr(V, dist, Infinity).

init_adjs(Ps, d(X, Y, D)) :-
    %ord_memberchk(X-Xv, Ps),
    %ord_memberchk(Y-Yv, Ps),
    memberchk(X-Xv, Ps),
    memberchk(Y-Yv, Ps),
    adj_add(Xv, Yv, D),
    adj_add(Yv, Xv, D).

adj_add(X, Y, D) :-
    (   get_attr(X, adjs, L)
    ->  put_attr(X, adjs, [Y-D|L])
    ;   put_attr(X, adjs, [Y-D])
    ).

main_loop([]).
main_loop([Q|Qs]) :-
    smallest_distance(Qs, Q, U, Qn),
    put_attr(U, assigned, true),
    get_attr(U, adjs, As),
    update_neighbours(As, U),
    main_loop(Qn).

smallest_distance([A|Qs], C, M, [T|Qn]) :-
    get_attr(A, dist, Av),
    get_attr(C, dist, Cv),
    (   Av < Cv
    ->  (N,T) = (A,C)
    ;   (N,T) = (C,A)
    ),
    !, smallest_distance(Qs, N, M, Qn).
smallest_distance([], U, U, []).

update_neighbours([V-Duv|Vs], U) :-
    (   get_attr(V, assigned, true)
    ->  true
    ;   get_attr(U, dist, Du),
        get_attr(V, dist, Dv),
        Alt is Du + Duv,
        (   Alt < Dv
        ->  put_attr(V, dist, Alt),
        put_attr(V, previous, U)
        ;   true
        )
    ),
    update_neighbours(Vs, U).
update_neighbours([], _).

:- begin_tests(dijkstra_av).

small([d(a,b,2),d(a,b,1),d(b,c,1),d(c,d,1),d(a,d,3),d(a,d,2)]).

test(1) :-
    nl,
    small(S),
    time(dijkstra_av(S, a, L)),
    maplist(writeln, L).

test(2) :-
    open('salesman.pl', read, F),
    readf(F, L),
    close(F),
    nl,
    dijkstra_av(L, penzance, R),
    maplist(writeln, R).

readf(F, [d(X,Y,D)|R]) :-
    read(F, dist(X,Y,D)), !, readf(F, R).
readf(_, []).

test(3) :-
    nl, small(S),
    time(dijkstra_edges(S, a, Es)),
    maplist(writeln, Es).

:- end_tests(dijkstra_av).
