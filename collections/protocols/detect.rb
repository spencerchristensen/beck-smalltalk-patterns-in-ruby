# frozen_string_literal: true

# Q: How do you search a collection?
# A: Search a collection by sending it `detect`. The first element for which the block argument evaluates to true will be returned.
[1, 2, 3, 4, 5].detect(&:even?)
[1, 2, 3, 4, 5].find(&:even?)
