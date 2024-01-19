# frozen_string_literal: true

# Q: How do you concatenate several Collections?
# A: Use a Stream to concatenate many Collections.
# Unsure of how this applies to Ruby, but Lazy enumerators seem to be the closest corollary?
(1..Float::INFINITY).lazy.select(&:even?).first(10)
