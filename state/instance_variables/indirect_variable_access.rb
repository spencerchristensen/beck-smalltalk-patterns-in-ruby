# frozen_string_literal: true

# Q: How do you get and set an instance variable's value?
# A: Access and set its value only through a Getting Method and a Setting Method.
class IndirectVariableAccess
  attr_accessor :some_var

  def initialize(some_var)
    @some_var = some_var
  end
end
