import queue

class Item:

	def __init__(self, w, v):
		self.weight = w
		self.value = v

	def __str__(self):
		return "(W:" + self.weight.__str__() + ", V:" + self.value.__str__() + ")"

	def __repr__(self):
		return self.__str__()


class Node:

	def __init__(self, level, value, bound, weight):
		self.level = level
		self.value = value
		self.bound = bound
		self.weight = weight
		self.max_profit = 0


class Graph01:

	def __init__(self, items, W):
		self.items = items
		self.W = W
		self.max_value = 0

	def val(self, a):
		c1 = a.value / a.weight
		return c1

	def graph(self, n):
		self.items.sort(key=self.val)

		Q = queue.PriorityQueue()
		root = Node(-1, 0, 0, 0)
		Q.put((self.W, root), False)

		while not Q.empty():
			current = Node(-2, 0, 0, 0)
			u = Q.get(False)[1]
			if u.level == n - 1:
				continue
			if u.level == -1:
				current.level = 0

			current.value = u.value + self.items[current.level].value
			current.weight = u.weight + self.items[current.level].weight
			current.level = u.level + 1
			current.bound = self.bound(current, n)

			if current.weight <= self.W and current.value > self.max_value:
				self.max_value = current.value

			if current.bound > self.max_value:
				priority = self.val(current)
				Q.put((priority, current), False)

		return self.max_value

	def bound(self, current, n):
		if current.weight >= self.W:
			return 0

		w = current.weight
		j = current.level + 1
		value_bound = current.value

		while j < n and w + self.items[j].weight <= self.W:
			w += self.items[j].weight
			value_bound += self.items[j].value
			j += 1

		if j < n:
			value_bound += (self.W - w) * (self.items[j].value / self.items[j].weight)

		return value_bound


if __name__ == "__main__":

	v = [60, 100, 120]
	wt = [10, 20, 30]
	max_weight = 50

	it = [Item(wt[i], v[i]) for i in range(len(v))]

	g = Graph01(it, max_weight)
	print(g.graph(len(it)))