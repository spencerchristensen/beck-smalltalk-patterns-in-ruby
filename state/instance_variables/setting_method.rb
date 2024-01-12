# frozen_string_literal: true

# Q: How do you change the value of an instance variable?
# A: Provide a method with the same name as the variable. Have it take a single parameter, the value to be set.
class GettingMethod
  attr_writer :some_var

  def initialize(some_var)
    @some_var = some_var
  end
end
