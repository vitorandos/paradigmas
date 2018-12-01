indices = {}
lowlinks = {}
on_stack = {}
index = 0;
S = []

def tarjan(vertices, edges):
    for vertex in vertices:
        if not vertex in indices:
            strong_connect(vertex)

def strong_connect(vertex):
    indices[vertex] = index
    lowlinks[vertex] = index
    index = index + 1
    S.append(vertex)
    on_stack[vertex] = True

    for tuplex in edges
        if not tuplex[1] in indices:
            strong_connect(tuplex[1]) 
