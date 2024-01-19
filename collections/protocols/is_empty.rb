# frozen_string_literal: true

# Q: How do you test if a collection is empty?
# A: Send `isEmpty` to test whether a collection is empty (has no elements). Use `notEmpty` to test whether a collection has elements.

# isEmpty
[].empty?
{}.empty?

# notEmpty
[].any?
{}.any?
