# frozen_string_literal: true

# Q: How do you simplify a complex expression within a method?
# A: Take a subexpression out of the complex expression. Assign its value to a termporary variable before the complex expression. Use the variable instead of the complex expression.
class ExplainingTemporaryVariable
  def bad_method
    2 * (4 / 2)
  end

  def good_method
    multiplier = 4 / 2
    2 * multiplier
  end
end
