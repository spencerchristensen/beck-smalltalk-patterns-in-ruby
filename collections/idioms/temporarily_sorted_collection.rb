# frozen_string_literal: true

# Q: How do you present a Collection with one of many sort orders?
# A: Return a sorted copy of the Collection by sending `asSortedCollection` to the Collection.
[1, 2, 2, 3, 3, 3, 3, 1, 4].sort
[1, 2, 2, 3, 3, 3, 3, 1, 4].sort { |a, b| b <=> a }
[{ name: 'James', age: 34 }, { name: 'Lars', age: 32 }].sort_by { |person| person[:age] }
