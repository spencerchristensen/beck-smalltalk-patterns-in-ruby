# frozen_string_literal: true

# Q: How do you code a constant?
# A: Create a method that returns the constant.
class ConstantMethod
  CONSTANT = 'hello world'

  private

  def constant
    CONSTANT
  end
end
