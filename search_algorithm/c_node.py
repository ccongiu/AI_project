""" Module containing class Node """

class Node:
    """ A class containing all node's attributes"""
    id=0
    nodes_in_memory = []
    def __init__(self, state, depth = 0, path_cost = 0, action = None , parent_node = None, children_nodes = [], possible_ways = 0):
        Node.id += 1   # class attribute created in order to count the generated nodes
        Node.nodes_in_memory.append(self)
        Node.depth = depth
        self.state = state
        self.path_cost = path_cost
        self.action = action
        self.parent_node = parent_node
        self.children_nodes = children_nodes
        self.evaluation_function = None
        self.possible_ways = possible_ways


    def __lt__(self, node2):
        return self.evaluation_function < node2.evaluation_function
