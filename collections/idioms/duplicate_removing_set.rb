# frozen_string_literal: true

# Q: How do you remove the duplicates from a Collection?
# A: Send `asSet` to the Collection. The result will have all duplicates removed.
[1, 2, 2, 3, 3, 3, 3, 1, 4].uniq
[1, 2, 2, 3, 3, 3, 3, 1, 4].uniq!
[1, 2, 2, 3, 3, 3, 3, 1, 4].to_set
