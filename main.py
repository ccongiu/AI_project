import pickle
import csv
import xlsxwriter
from problem import Route_Finding, map_rea, map
from search_algorithm import tree_search, Node
from search_algorithm.utils import enQueue_DFS, enQueue_Astar

#Recorded solutions for DFS and A* in 2 dict. Keys are the destination cities, values are the objects "solution_strategy"
DFS_sol = {}
Astar_sol = {}

start = 0  #initial node


for city in map:
    Problem = Route_Finding(start,city, map)

    solution_DFS = tree_search(Problem, enQueue_DFS)
    case = {city:solution_DFS}
    DFS_sol.update(case)


    Node.id = 0
    Node.nodes_in_memory = []

    solution_Astar = tree_search(Problem, enQueue_Astar, map_rea[start])
    case = {city: solution_Astar}
    Astar_sol.update(case)

    Node.id = 0
    Node.nodes_in_memory = []

print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")

print("{:<20} {:<20} {:<20} {:<20} {:<20}".format('DESTINATION', 'DEPTH', 'PATH COST', 'CREATED NODES', 'NODES IN MEMORY'))
for key, value in Astar_sol.items():
    destination = key
    path = value.path
    path_c = value.path_cost
    c_nodes = value.created_nodes
    depth = value.d
    node_in_mem = len(value.nodes_in_memory)
    print("{:<20} {:<20} {:<20} {:<20} {:<20}".format(destination, depth, path_c, c_nodes,  node_in_mem))


print('-----------------------------------------------------------------------------')

for key, value in DFS_sol.items():
    destination = key
    path_c = value.path_cost
    c_nodes = value.created_nodes
    node_in_mem = len(value.nodes_in_memory)
    depth = value.d
    print("{:<20} {:<20} {:<20} {:<20} {:<20}".format(destination, depth, path_c, c_nodes,  node_in_mem))#max_mem,



with open('solutionDFS_50.csv', mode='w') as solDFS_file:
    solDFS_file = csv.writer(solDFS_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)

    solDFS_file.writerow(['Destination', 'depth', 'created nodes', 'nodes in memory', 'path cost', 'path length'])

    for key, value in DFS_sol.items():
        solDFS_file.writerow([key, value.d, value.created_nodes, len(value.nodes_in_memory), value.path_cost, len(value.path)])

with open('solutionAstar_50.csv', mode='w') as solAstar_file:
    solAstar_file = csv.writer(solAstar_file, delimiter=',', quoting=csv.QUOTE_MINIMAL)

    solAstar_file.writerow(['Destination', 'depth', 'created nodes', 'nodes in memory', 'path cost', 'path length'])

    for key, value in Astar_sol.items():
        solAstar_file.writerow([key, value.d, value.created_nodes, len(value.nodes_in_memory), value.path_cost, len(value.path)])






