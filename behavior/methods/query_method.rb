# frozen_string_literal: true

# Q: How do you represent testing a property of an object?
# A: Provide a method that returns a Boolen. Name it by prefacing a form of "be", is|was|will|etc
class QueryMethod
  def initialize(param)
    @param = param
  end

  # it seems that idiomatic Ruby prefers `condition?` to `is_condition?`, with `?` replacing is|was|will|etc
  def condition?
    @param == true
  end
end
