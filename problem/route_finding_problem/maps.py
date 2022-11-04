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
n_edges = n_nodes*3
while (conn == 'False'):
    G = nx.dense_gnm_random_graph(n_nodes, n_edges, 0)
    nx.draw(G, with_labels=True)
    plt.savefig("Graph.png", format="PNG")
    plt.show()
    conn = nx.is_connected(G)
    #print(conn)

    #print(G.adj)

# Spacial coordinates of the cities, for each node of the graph
x = np.random.uniform(0, 200, n_nodes)
y = np.random.uniform(0, 200, n_nodes)
#print(x)
#print(y)


#modify Adj matrix. Update with aerial distance the dict => map, real distance => map_rea

map = {k: v for k, v in G.adjacency()}
map_rea = copy.deepcopy(map)
#map_rea = {}
#dict_temp = {}
#print(map)

#Costruzione mappa distanza tra le città
for node in G.nodes:
    #print("node ", node)
    for edge in map[node]:

        #euclidian distance between connected nodes
        d = math.dist([x[node],y[node]],[x[edge],y[edge]])
        change = {edge:d}
        #print(change)
        map[node].update(change)

        #real distance
        #km = np.random.uniform(5,20)
        #print(km)
        #change_rea = {edge: dd}
        #map_rea[node].update(change_rea)

    for i in G.nodes:
        km = np.random.uniform(20, 100)
        change = {i:km}
        map_rea[node].update(change)



print(map)
print(map_rea)

print("")