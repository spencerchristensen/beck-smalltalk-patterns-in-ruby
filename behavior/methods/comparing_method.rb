# frozen_string_literal: true

# Q: How do you order objects with respect to each other?
# A: Implement `<=` to return true if the receiver should be ordered before the argument.
class ComparingMethod
  def <=(param)
    param > 1
  end
end
