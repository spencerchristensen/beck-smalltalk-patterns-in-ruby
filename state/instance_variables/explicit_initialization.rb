# frozen_string_literal: true

# Q: How do you initialize instance variables to their default value?
# A: Implement a method `initialize` that sets all the values explicitly. Override the class message `new` to invoke it on new instances.
class ExplicitInitialization
  def initialize(some_var)
    @some_var = some_var
  end
end
