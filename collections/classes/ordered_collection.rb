# frozen_string_literal: true

# Q: How do you code Collections whose size can't be determined when they are created?
# A: Use an OrderedCollection as your default dynamically sized Collection.
class OrderedCollection
  def initialize
    @array = []
  end

  def add(element)
    @array << element
  end

  def [](index)
    @array[index]
  end

  def []=(index, element)
    @array[index] = element
  end
end
