import heapq

nums = [1, 4, 2, 3, 55, -2, 44, 22]

protfolio = [
        {'name': 'IBm', 'shares': 20, 'price': 91.1},
        {'name': 'IBf', 'shares': 10, 'price': 11.1},
        {'name': 'IBc', 'shares': 190, 'price': 71.1},
        {'name': 'IBa', 'shares': 120, 'price': 81.1},
        {'name': 'IBd', 'shares': 130, 'price': 61.12},
        {'name': 'IBs', 'shares': 110, 'price': 91.21}
        ]

print('max numbers => ', heapq.nlargest(3, nums))
print('min numbers => ', heapq.nsmallest(3, nums))
print('max prices => ', heapq.nlargest(3, protfolio, key=lambda s: s['price']))
print('min prices => ', heapq.nsmallest(3, protfolio, key=lambda s: s['price']))
