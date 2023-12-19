# frozen_string_literal: true

# Q: How do you represent pairs of actions that have to be taken together?
# A: Code a method that takes a block, invoke the first method, yield to the block, and then invoke the second method.
class ExecuteAroundMethod
  def ensure_first_and_last
    first
    yield if block_given?
  ensure
    last
  end

  def first; end
  def last; end
end
