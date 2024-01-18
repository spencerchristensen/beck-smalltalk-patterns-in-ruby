# frozen_string_literal: true

# Q: How do you represent a one-to-many relationship?
# A: Use a Collection.
class Collection
  def some_collections
    array = [0, 'one', :two]
    hash = { hello: 'world' }
    set = Set.new([0, 1])
    range = 1..10
    exclusive_range = 1...10

    puts array, hash, set, range, exclusive_range
  end
end
