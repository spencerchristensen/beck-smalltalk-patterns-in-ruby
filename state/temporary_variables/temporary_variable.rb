# frozen_string_literal: true

# Q: How do you save the value of an expression for later use within a method?
# A: Create a variable whose scope and extent is a single method. Delcare it just below the method selector. Assign it as soon as the expression is valid.
class TemporaryVariable
  def some_method
    result = do_complex_thing
    parse_result result
  end

  private

  def do_complex_thing
    'hello world'
  end

  def parse_result(result)
    result
  end
end
