# frozen_string_literal: true

# Q: How do you get and set an instance variable's value?
# A: Access and set the variable directly.
class DirectVariableAccess
  def initialize(some_var)
    @some_var = some_var
  end

  def read
    @some_var
  end

  def modify
    @some_var += 'great'
  end
end
