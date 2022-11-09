import random
import copy
import networkx as nx
import matplotlib.pyplot as plt
import numpy as np
import math
from random import uniform


# create connected random graph
conn = 'False'
n_nodes = 50
n_edges = n_nodes*4
while (conn == 'False'):
    G = nx.gnm_random_graph(n_nodes, n_edges, 0)
    nx.draw(G, with_labels=True)
    plt.savefig("Graph.png", format="PNG")
    plt.show()
    conn = nx.is_connected(G)

# Spacial coordinates of the cities, for each node of the graph
x = np.random.uniform(0, 200, n_nodes)
y = np.random.uniform(0, 200, n_nodes)

#modify Adj matrix. Update with aerial distance the dict map, real distance map_rea

map = {k: v for k, v in G.adjacency()}
map_rea = copy.deepcopy(map)

#Aereal distance between cities
for node in G.nodes:
    for edge in map[node]:

        #euclidian distance between connected nodes
        d = math.dist([x[node], y[node]], [x[edge], y[edge]])
        change = {edge:d}
        map[node].update(change)

    for i in G.nodes:
        km = np.random.uniform(20, 100)
        change = {i:km}
        map_rea[node].update(change)

print(map)
print(map_rea)
