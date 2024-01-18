# frozen_string_literal: true

# Q: How do you ensure that new objects work correctly with hashed Collections?
# A: If you override `=` and use the object with a hashed Collection, override "hash" so that two objects that are equal return the same hash value.
class HashingMethod
  attr_accessor :attr_one, :attr_two

  def initialize(attr_one, attr_two)
    @attr_one = attr_one
    @attr_two = attr_two
  end

  def ==(other)
    if other.is_a?(self.class) && other.attr_one == attr_one && other.attr_two == attr_two
      true
    else
      false
    end
  end

  def hash
    [attr_one, attr_two].hash
  end
end
