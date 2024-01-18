# frozen_string_literal: true

# Q: How do you code a collection of numbers in sequence?
# A: Use an Interval with start, stop, and an optional step value.
class Interval
  def get_range(start, stop, step = nil)
    range = (start..stop)
    step ? range.step(step) : range
  end
end
