# frozen_string_literal: true

# Q: How do you represent the default value of a variable?
# A: Create a method that returns the value. Prepend "default" to the name of the variable as the name of the method.
class DefaultValue
  def default_variable
    'hello world'
  end
end
