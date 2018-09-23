class Brute:

	def __init__(self, n):
		self.potential = []
		array = [i for i in range(n)]
		self.permute(array, 0, n-1)

	def permute(self, array, cursor_start, cursor_end):
		if cursor_start == cursor_end:
			self.potential.append(array.copy())
			# print(self.potential[len(self.potential) - 1])
		else:
			for i in range(cursor_start, cursor_end + 1):
				array[cursor_start], array[i] = array[i], array[cursor_start]
				self.permute(array, cursor_start + 1, cursor_end)
				array[cursor_start], array[i] = array[i], array[cursor_start]

	def knapsack(self, w, v, W):
		value = 0
		for i in range(len(self.potential)):
			current_val = self.value(self.potential[i], v)
			if self.weight(self.potential[i], w) <= W and current_val > value:
				value = current_val
		return value

	def weight(self, array, weights):
		total = 0
		for i in array:
			total += weights[array[i]]
		return total

	def value(self, array, values):
		total = 0
		for i in array:
			total += values[array[i]]
		return total

# runs the algorithm
if __name__ == '__main__':
	W = 100
	val = [10, 30, 20]
	wt = [5, 10, 15]
	n = len(val)

	b = Brute(n)
	print(b.knapsack(wt, val, W))