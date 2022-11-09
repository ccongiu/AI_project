"""Module for a class representing a solution"""

class Solution():
    def __init__(self, depth, path, path_cost, created_nodes,  nodes_in_memory ):
        self.d = depth
        self.path = path
        self.path_cost = path_cost
        self.created_nodes = created_nodes
        self.nodes_in_memory = nodes_in_memory


