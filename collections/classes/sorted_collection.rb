# frozen_string_literal: true

# Q: How do you sort a collection?
# A: Use a SortedCollection. Set its sort block if you want to sort by some criteria other than `<=`.
class SortedCollection
  def sort_array
    [3, 1, 4, 1, 5, 9, 2, 6].sort
  end

  def sort_array_with_block
    [3, 1, 4, 1, 5, 9, 2, 6].sort { |a, b| a <=> b }
  end

  def sort_array_of_hashes
    [{ name: 'James', age: 34 }, { name: 'Lars', age: 32 }].sort_by { |person| person[:age] }
  end
end
