class Dynamic:
	def knapsack(self, max_weight_in, weights_in, values_in, n_in):
		s = [[0 for i in range(max_weight_in+1)] for i in range(n_in+1)]

		for i in range(n_in+1):
			for w in range(max_weight_in+1):
				if i == 0 or w == 0:
					s[i][w] = 0
				elif weights_in[i-1] <= w:
					s[i][w] = max(values_in[i-1] + s[i-1][w-weights_in[i-1]], s[i-1][w])
				else:
					s[i][w] = s[i-1][w]
		return s[n_in][max_weight_in]


# runs the algorithm
if __name__ == '__main__':
	values = [60, 100, 120]
	weights = [10, 20, 30]
	max_weight = 50
	n = len(values)
	d = Dynamic()
	print(d.knapsack(max_weight, weights, values, n))
