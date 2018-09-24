class Dynamic:

	def knapsack(self, n, values, weights, W):
		table = [0 for i in range(W + 1)]

		for i in range(W + 1):
			for j in range(n):
				if (weights[j] <= i):
					table[i] = max(table[i], table[i - weights[j]] + values[j])

		return table[W]

if __name__ == "__main__":
	v = [60, 100, 120]
	wt = [10, 20, 30]
	max_weight = 50
	len = len(v)
	d = Dynamic()
	print(d.knapsack(len, v, wt, max_weight))
