# frozen_string_literal: true

# Q: How do you code equality for new objects?
# A: If you will be putting objects in a Set, using them as Dictionary keys, or otherwise using them with other objects that define equality, define a method called "=" so only objects of compatible classes will be fully tested for equality.
class EqualityMethod
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
end
