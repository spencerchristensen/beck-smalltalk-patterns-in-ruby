# frozen_string_literal: true

# Q: How do you implement a queue?
# A: Implement a queue using an OrderedCollection. Operations: `add`, `remove`, `empty`, `length`
class Queue
  def initialize
    @queue = []
  end

  def add(element)
    @queue << element
  end

  def remove
    @queue.shift
  end

  def empty?
    @queue.empty?
  end

  def length
    @queue.size
  end
end
