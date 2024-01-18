# frozen_string_literal: true

# Q: How do you compactly code an OrderedCollection or Array where you have the same element many times in a row?
# A: Use a RunArray to compress long runs of the same element.
class RunArray
  def initialize
    @array = []
  end

  def add(value)
    if @array.empty? || @array.last[:value] != value
      @array << { value:, count: 1 }
    else
      @array.last[:count] += 1
    end
  end

  def to_a
    @array.flat_map do |element|
      [element[:value]] * element[:count]
    end
  end
end
