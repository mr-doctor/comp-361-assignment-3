import random
import unittest

from src.dynamic_0N import Dynamic0N


class Tests(unittest.TestCase):
	pass

	def test_3_elems(self):
		b = Dynamic0N()
		values = [60, 100, 120]
		weights = [10, 20, 30]
		max_weight = 50
		n = len(values)

		val = b.knapsack(n, values, weights, max_weight)

		print("THREE")
		print("values: " + values.__str__())

		print("weights: " + weights.__str__())

		print("max weight: " + max_weight.__str__())

		print("final value: " + val.__str__() + "\n")

	def test_10_elems(self):
		b = Dynamic0N()
		values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		weights = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
		max_weight = 40
		n = len(values)

		val = b.knapsack(n, values, weights, max_weight)

		print("TEN")
		print("values: " + values.__str__())

		print("weights: " + weights.__str__())

		print("max weight: " + max_weight.__str__())

		print("final value: " + val.__str__() + "\n")

	def test_random(self):
		b = Dynamic0N()
		num = random.randint(1, 20)

		values = [random.randint(1, 20) for i in range(num)]
		weights = [random.randint(1, 20) for i in range(num)]
		max_weight = random.randint(1, 100)
		n = len(values)

		val = b.knapsack(n, values, weights, max_weight)

		print("RANDOM")
		print("values: " + values.__str__())

		print("weights: " + weights.__str__())

		print("max weight: " + max_weight.__str__())
		print("final value: " + val.__str__() + "\n")


if __name__ == '__main__':
	t = Tests
