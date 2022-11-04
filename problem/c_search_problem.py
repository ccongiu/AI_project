""" Module containing a the abstract class Search_Problem whose abstract methods are implemented by Route_Finding"""

from abc import abstractmethod

class Search_Problem:
    """Abstract class Search_Problem"""

    def __init__(self, initial_state, goal_state):
        self.initial_state = initial_state
        self.goal_state = goal_state


    def goal_test(self, state):
        """ function that checks whether an input state is a goal state """
        return self.goal_state == state

    @abstractmethod
    def successor_function(self, state):
        """the function SF  that returns a set of pairs (action,state) from a given state """
        pass

    @abstractmethod
    def step_cost(self, state, action):
       """function that returns the cost of carrying out a given action in a given node """
       pass



