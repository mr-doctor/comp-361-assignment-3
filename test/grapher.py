import random
import time

from src.brute_0N import Brute, Item
from src.dynamic_01 import Dynamic as Dynamic01
from src.dynamic_0N import Dynamic0N
from src.graph_search_approximate_0N import Graph0N

current_millis_time = lambda: int(round(time.time() * 1000))

class Grapher:

	def graph_dynamic_01(self, values, weights):
		d = Dynamic01()
		W = 100
		for i in range(len(values)):
			time = current_millis_time()
			for j in range(3):
				d.knapsack(W, weights[0:i], values[0:i], i)

			print((current_millis_time() - time) / 3)

	# WARNING, THIS WILL FREEZE UP YOUR COMPUTER IF YOU LET IT RUN
	def graph_brute_0N(self, values, weights):
		items = [Item(weights[i], values[i]) for i in range(len(values))]
		W = 100

		for i in range(len(values)):
			b = Brute(items[0:i], W)
			time = current_millis_time()
			b.generate_permutations([])
			b.knapsack()
			print(current_millis_time() - time)

	def graph_dynamic_0N(self, values, weights):
		d = Dynamic0N()
		W = 100
		for i in range(len(values)):
			time = current_millis_time()
			for j in range(3):
				d.knapsack(i, values[0:i], weights[0:i], W)

			print((current_millis_time() - time) / 3)

	# WARNING, THIS WILL FREEZE UP YOUR COMPUTER IF YOU LET IT RUN
	def graph_graph_0N(self, values, weights):
		items = [Item(weights[i], values[i]) for i in range(len(values))]
		W = 100

		for i in range(len(values)):
			b = Graph0N(items[0:i], W)
			time = current_millis_time()
			b.generate_permutations([])
			b.knapsack()
			print(current_millis_time() - time)

if __name__ == "__main__":
	g = Grapher()

	num = 500
	values = [random.randint(1, 20) for i in range(num)]
	weights = [random.randint(1, 20) for i in range(num)]

	# g.graph_dynamic_01(values, weights)
	# g.graph_brute_0N(values, weights)
	# g.graph_dynamic_0N(values, weights)
	g.graph_graph_0N(values, weights)