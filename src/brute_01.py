class Brute:

	def __init__(self):
		self.best_value = 0

	def knapsack(self, n, current_weight, current_value, weights, values, max_weight):
		if n == 0 and current_weight <= max_weight and current_value > self.best_value:
			self.best_value = current_value

		if n == 0:
			return

		self.knapsack(n - 1, current_weight, current_value, weights, values, max_weight)

		self.knapsack(n - 1, current_weight + weights[n], current_value + values[n], weights, values, max_weight)


# runs the algorithm
if __name__ == '__main__':
	values = [60, 100, 120]
	weights = [10, 20, 30]
	max_weight = 50
	n = len(values)

	b = Brute()
	b.knapsack(n - 1, 0, 0, weights, values, max_weight)

	print(b.best_value)