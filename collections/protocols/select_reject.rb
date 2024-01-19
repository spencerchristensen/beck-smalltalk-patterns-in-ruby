# frozen_string_literal: true

# Q: How do you filter out part of a collection?
# A: Use `select` and `reject` to return new collections containing only elements of interest.
[1, 2, 3, 4, 5].select(&:even?)
[1, 2, 3, 4, 5].reject(&:even?)
