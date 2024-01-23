# frozen_string_literal: true

# Q: When do you explicitly return a value at the end of a method?
# A: Return a value only when you intend for the sender to use the value.
class InterestingReturnValue
  def side_effect!(param)
    param << ' world'
  end

  def square(param)
    param * param
  end
end
