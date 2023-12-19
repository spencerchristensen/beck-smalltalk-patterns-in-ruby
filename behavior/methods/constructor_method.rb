# frozen_string_literal: true

# Q: How do you represent instance creation?
# A: Create methods that perform well-formed instances; pass all required parameters to them.
class ConstructorMethod
  # Option 1: use the `new` method inherited from Class
  def initialize(param_one, param_two)
    @param_one = param_one
    @param_two = param_two
  end

  # Option 2: use a custom class method
  def self.computed_create(param_one, param_two)
    computed_one = param_one + 1
    computed_two = param_two + 2
    new(computed_one, computed_two)
  end
end
