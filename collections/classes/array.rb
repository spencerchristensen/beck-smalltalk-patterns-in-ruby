# frozen_string_literal: true

# Q: How do you code a collection with a fixed number of elements?
# A: Use an Array. Create it with `new: anInteger` so that it has space for the number of elements you know it needs.
Array.new(10, 'hello')
Array.new(10) { |index| index * 2 }
