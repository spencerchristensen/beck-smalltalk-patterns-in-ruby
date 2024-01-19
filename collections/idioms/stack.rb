# frozen_string_literal: true

# Q: How do you implement a stack?
# A: Implement a stack using an OrderedCollection. Operations: `push`, `pop`, `top`, `depth`, `empty`
class Stack
  def initialize
    @stack = []
  end

  def push(element)
    @stack << element
  end

  def pop
    @stack.pop
  end

  def top
    @stack.last
  end

  def depth
    @stack.size
  end

  def empty?
    @stack.empty?
  end
end
