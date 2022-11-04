""" Module containing some auxiliary functions """
from bisect import insort
from .c_node import Node
from .c_solution import Solution

def enQueue_Astar(node, queue, heuristic):
    node.evaluation_function = node.path_cost + heuristic[node.state]
    insort(queue, node)




def enQueue_DFS(node, queue, *args):
    """
    :param node: node to be inserted
    :param queue: queue where the node has to be inserted
    :return:
    """
    queue.insert(0, node) #insert elements at the beginning of the queue (DF strategy)


def enQueue_BFS(node, queue, *args):
    """
    :param node: node to be inserted
    :param queue: queue where the node has to be inserted
    :return:
    """
    queue.append(node) #append elements at the end of the queue (BF strategy)

def expand(node, problem):
    """
    :param node: node to be expanded
    :param problem: search problem at hand
    :return: a list containing the successors of the node
    """
    succ = []
    succ_states = problem.successor_function(node.state)
    node.possible_ways = len(succ_states)
    #print("possible ways ", node.possible_ways)
    for state, action in succ_states.items():
       if not_in_path(state, node):
        new_node = Node(state)
        new_node.parent_node = node
        new_node.action = action
        new_node.path_cost = node.path_cost + problem.step_cost(node.state, action)
        new_node.depth = node.depth + 1
        node.children_nodes.append(new_node)
        succ.append(new_node)
    return succ

def solution(node):
    """
    :param node: selected node
    :return: a list containing the sequence of actions from the root of the tree to node
    """

    states_path_list = []
    path_cost = node.path_cost
    for i in range(node.depth+1):

        states_path_list.insert(0, node.state)
        node = node.parent_node

    solution =Solution(states_path_list, path_cost, Node.id, Node.nodes_in_memory) #Node.max_in_memory, )
    return solution


def not_in_path(state, node):
    child = node
    parents_list = []
    for i in range(child.depth):
        parents_list.append(child.parent_node.state)
        child = child.parent_node
    return state not in parents_list


def delete_path(node):
    #for i in range(node.depth):
        #if node in Node.nodes_in_memory:
            #if node.possible_ways == 1:
             #Node.nodes_in_memory.remove(node)
             #print("REMOVED", node.state)
           #  x = node.state
             #node = node.parent_node
             #node.possible_ways -= 1
    Node.nodes_in_memory.remove(node)
    node = node.parent_node
    node.possible_ways -= 1



