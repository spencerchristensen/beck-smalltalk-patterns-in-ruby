# frozen_string_literal: true

# Q: How do you provide access to an instance variable?
# A: Provide a method that returns the value of that variable. Give it the same name as the variable.
class GettingMethod
  attr_reader :some_var

  def initialize(some_var)
    @some_var = some_var
  end
end
