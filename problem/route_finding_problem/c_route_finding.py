""" Module containing the class Route_Finding containing functions inherited from Search_Problem"""

from problem import Search_Problem


class Route_Finding(Search_Problem):
    """class for tree problem route finding in a map"""
    def __init__(self, initial_state, goal_state, map):
        super().__init__(initial_state, goal_state)
        self.map = map

    def successor_function(self, state):
        """
        the function SF that returns a set of pairs from a given state
        :param state: actual state
        :return: children nodes of the search tree to be added to  the fringe:
        """
        try:
            succ = self.map[state]

        except:
            succ = {}

        return succ


    def step_cost(self, state, action):
        """
         function that returns the cost of carrying out a given action in a given node
        """
        return action


