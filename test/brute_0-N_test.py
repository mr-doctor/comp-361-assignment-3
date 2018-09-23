import random
import unittest

from src.brute_0N import Brute, Item


class Tests(unittest.TestCase):
	pass

	def test_3_elems(self):
		max_weight = 100
		values = [10, 30, 20]
		weights = [5, 11, 15]
		n = len(values)

		items = [Item(weights[i], values[i]) for i in range(n)]

		b = Brute(items, max_weight)
		b.generate_permutations([])

		print("values: " + values.__str__())
		print("values: " + weights.__str__())
		print("max weight: " + max_weight.__str__())

		val, arr = b.knapsack()

		print("final value " + val.__str__())
		print(arr)


	def test_10_elems(self):
		values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		weights = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
		max_weight = 40
		n = len(values)

		items = [Item(weights[i], values[i]) for i in range(n)]

		b = Brute(items, max_weight)
		b.generate_permutations([])

		print("values: " + values.__str__())
		print("values: " + weights.__str__())
		print("max weight: " + max_weight.__str__())

		val, arr = b.knapsack()

		print("final value " + val.__str__())
		print(arr)

	def test_random(self):
		num = random.randint(0, 20)

		values = [random.randint(10, 20) for i in range(num)]
		weights = [random.randint(10, 20) for i in range(num)]
		max_weight = random.randint(1, 100)
		n = len(values)

		items = [Item(weights[i], values[i]) for i in range(n)]

		b = Brute(items, max_weight)
		b.generate_permutations([])

		print("values: " + values.__str__())
		print("values: " + weights.__str__())
		print("max weight: " + max_weight.__str__())

		val, arr = b.knapsack()

		print("final value " + val.__str__())
		print(val, arr)


if __name__ == '__main__':
	t = Tests
