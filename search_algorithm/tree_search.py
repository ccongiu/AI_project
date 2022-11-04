""" Module containing the algorithm tree_search """

from .c_node import Node
from .utils import expand, solution, delete_path, enQueue_DFS


def tree_search(Problem, enQueue, heuristic=None):
    """

    :param Problem: search problem to be solved
    :param enQueue: method that inserts in the queue each node in the set nodes, in a position defined by the search strategy
    :return: the solution or a failure (None)
    """
    fringe = []
    RootNode = Node(Problem.initial_state)
    enQueue(RootNode, fringe, heuristic)

    while len(fringe) != 0:
        #print("----------------------FRINGE-----------------------------")
        #for node in fringe:
            #print(node.state)
        node = fringe.pop(0)
        #print("-----------------------------------------------------")
        #print("selected", node.state)

        if Problem.goal_test(node.state):
            return solution(node)
        else:
            successors = expand(node, Problem)
            #print("---------------------SUCCESSORS---------------------")
            #for node in successors:
                #print(node.state)
            next_nodes = []
            for i in range(len(successors)):
                enQueue(successors[i], fringe, heuristic)
                next_nodes.append(successors[i])
            if enQueue == enQueue_DFS:
                if next_nodes == []:
                  delete_path(node)
    return None
