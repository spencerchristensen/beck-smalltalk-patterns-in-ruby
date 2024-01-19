# frozen_string_literal: true

# Q: How do you operation on the result of a message sent to each object in the collection?
# A: Use `collect` to create a new collection whose elements are the results of evaluating the block passed to `collect` with each element of the original collection.
[1, 2, 3].collect { |number| number * 2 }
[1, 2, 3].map { |number| number * 2 }
