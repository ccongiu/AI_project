import pickle
import csv
import xlsxwriter
from problem import Route_Finding, map_rea, map
from search_algorithm import tree_search, Node
from search_algorithm.utils import enQueue_DFS, enQueue_BFS, enQueue_Astar

#Recorded solutions for DFS and A* in 2 dict. Keys are the destination cities, values are the objects "solution_strategy"
DFS_sol = {}
Astar_sol = {}

start = 0  #initial node

#Calculate the path
for city in map:
    #city = 5
    Problem = Route_Finding(start,city, map)
    #print('xxxxxxxxxxxxxxxxxxxxxxxxxxx        Depth First Strategy        xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')

    solution_DFS = tree_search(Problem, enQueue_DFS)
    #print("Solution: ",solution_DFS.path)
    #print("Path cost: ",solution_DFS.path_cost)
    #print('Generated nodes: ', solution_DFS.created_nodes)
    #print('Max number of nodes in memory:', solution_DFS.max_in_memory)
    case = {city:solution_DFS}
    DFS_sol.update(case)

    #print('xxxxxxxxxxxxxxxxxxxxxxxxxxx        A* Strategy        xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')

    Node.id = 0
    Node.nodes_in_memory = []
    Node.max_in_memory = 0
    #print(map_rea[start])
    solution_Astar = tree_search(Problem, enQueue_Astar, map_rea[start])
    #print("Solution: ",solution_Astar.path)
    #print("Path cost: ",solution_Astar.path_cost)
    #print('Generated nodes: ', solution_Astar.created_nodes)
    #print('Max number of nodes in memory:', solution_Astar.max_in_memory)
    case = {city: solution_Astar}
    Astar_sol.update(case)

    Node.id = 0
    Node.nodes_in_memory = []
    Node.max_in_memory = 0

print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
#print(Astar_sol(1))

print("{:<20} {:<20} {:<20} {:<20} {:<20}".format('DESTINATION', 'PATH COST', 'CREATED NODES', 'MAX IN MEMORY', 'NODES IN MEMORY'))
for key, value in Astar_sol.items():
    destination = key
    path = value.path
    path_c = value.path_cost
    c_nodes = value.created_nodes
    #max_mem = value.max_in_memory
    node_in_mem = len(value.nodes_in_memory)
    print("{:<20} {:<20} {:<20} {:<20} ".format(destination, path_c, c_nodes,  node_in_mem)) #max_mem,


print('-----------------------------------------------------------------------------')

for key, value in DFS_sol.items():
    destination = key
    #path = value.path
    path_c = value.path_cost
    c_nodes = value.created_nodes
    #max_mem = value.max_in_memory
    node_in_mem = len(value.nodes_in_memory)
    print("{:<20} {:<20} {:<20} {:<20}".format(destination, path_c, c_nodes,  node_in_mem))#max_mem,


#with open('objs.pkl', 'w') as f:  # Python 3: open(..., 'wb')
    #pickle.dump([Problem, DFS_sol, Astar_sol, map, map_rea], f)

with open('solutionDFS_50.csv', mode='w') as solDFS_file:
    solDFS_file = csv.writer(solDFS_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)

    solDFS_file.writerow(['Destination', 'created nodes', 'max in memory', 'path cost'])

    for key, value in DFS_sol.items():
        solDFS_file.writerow([key, value.created_nodes, value.path_cost]) #value.max_in_memory,

with open('solutionAstar_50.csv', mode='w') as solAstar_file:
    solAstar_file = csv.writer(solAstar_file, delimiter=',', quoting=csv.QUOTE_MINIMAL)

    solAstar_file.writerow(['Destination', 'created nodes', 'max in memory', 'path cost'])

    for key, value in Astar_sol.items():
        solAstar_file.writerow([key, value.created_nodes,value.path_cost])#value.max_in_memory,






