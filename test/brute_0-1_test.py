import random
import unittest

from src.brute_01 import Brute


class Tests(unittest.TestCase):
	pass

	def test_3_elems(self):
		b = Brute()
		values = [60, 100, 120]
		weights = [10, 20, 30]
		max_weight = 50
		n = len(values)

		b.knapsack(n - 1, 0, 0, weights, values, max_weight)

		print("values: " + values.__str__())

		print("values: " + weights.__str__())

		print("max weight: " + max_weight.__str__())

		print("final value: " + b.best_value.__str__() + "\n")
		self.assertEqual(b.best_value, 220)

	def test_10_elems(self):
		b = Brute()
		values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		weights = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
		max_weight = 40
		n = len(values)

		b.knapsack(n - 1, 0, 0, weights, values, max_weight)

		print("values: " + values.__str__())

		print("values: " + weights.__str__())

		print("max weight: " + max_weight.__str__())

		print("final value: " + b.best_value.__str__() + "\n")
		self.assertEqual(b.best_value, 20)

	def test_random(self):
		b = Brute()
		num = random.randint(0, 20)

		values = [random.randint(1, 20) for i in range(num)]
		weights = [random.randint(1, 20) for i in range(num)]
		max_weight = random.randint(1, 100)
		n = len(values)

		b.knapsack(n - 1, 0, 0, weights, values, max_weight)

		print("values: " + values.__str__())

		print("values: " + weights.__str__())

		print("max weight: " + max_weight.__str__())
		print("final value: " + b.best_value.__str__() + "\n")


if __name__ == '__main__':
	t = Tests
