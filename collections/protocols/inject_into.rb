# frozen_string_literal: true

# Q: How do you keep a running value as you iterate over a collection?
# A: Use `inject:into` to keep a running value.
[1, 2, 3, 4, 5].inject { |acc, num| acc + num }
[1, 2, 3, 4, 5].reduce(:+)
