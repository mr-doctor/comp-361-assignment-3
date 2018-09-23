class Item:

	def __init__(self, w, v):
		self.weight = w
		self.value = v

	def __str__(self):
		return "(W:" + self.weight.__str__() + ", V:" + self.value.__str__() + ")"

	def __repr__(self):
		return self.__str__()

class Brute:

	def __init__(self, items, max_weight):
		self.items = items
		self.max_weight = max_weight
		self.potential = []

	def generate_permutations(self, array):
		w = self.weight(array)
		if w == self.max_weight:
			self.potential.append(array.copy())
		count = 0
		for i in self.items:
			if count == len(self.items) - 1:
				self.potential.append(array.copy())
				return
			if w + i.weight <= self.max_weight:
				arr2 = array.copy()
				arr2.append(i)
				self.generate_permutations(arr2)
			else:
				count += 1

	def weight(self, array):
		total = 0
		for a in array:
			total += a.weight
		return total

	def knapsack(self):
		best = []
		for p in self.potential:
			value = self.value(p)
			if value > self.value(best):
				best = p

		return self.value(best), best

	def value(self, array):
		total = 0
		for a in array:
			total += a.value
		return total


if __name__ == '__main__':
	W = 100
	val = [10, 30, 20]
	wt = [5, 11, 15]
	n = len(val)

	it = [Item(wt[i], val[i]) for i in range(n)]

	b = Brute(it, W)

	b.generate_permutations([])
	print(b.knapsack())