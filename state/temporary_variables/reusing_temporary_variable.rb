# frozen_string_literal: true

# Q: How do you use an expression several places in a method when its value may change?
# A: Execute the expression once and set a temporary variable. Use the variable instead of the expression in the remainder of the method.
class ReusingTemporaryVariable
  def some_method
    result = some_complex_calculation

    result = process_result_one(result)
    process_result_two(result)
  end

  def process_result_one(result)
    "#{result} hello"
  end

  def process_result_two(result)
    "#{result} world"
  end
end
