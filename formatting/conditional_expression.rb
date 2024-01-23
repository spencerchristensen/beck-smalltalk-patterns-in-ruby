# frozen_string_literal: true

# Q: How do you format conditional expressions where both branches assign or return a value?
# A: Format conditionals so their value is used where it clearly expresses the intent of the method.
class ConditionalExpression
  def some_method
    x = true
    y = if x
          'hello'
        else
          'goodbye'
        end
    puts y
  end
end
