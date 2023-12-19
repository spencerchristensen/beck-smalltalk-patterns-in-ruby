# frozen_string_literal: true

# Q: How do you set instances variables from the parameters passed to the Constructor Method?
class RedundantSetterLogic
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
  end

  def first_name=(first_name)
    @first_name = first_name.capitalize
  end

  def last_name=(last_name)
    @last_name = last_name.capitalize
  end
end

# A: Code a single method that sets all the variables.
class ConstructorParameterMethod
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    self.first_name = first_name
    self.last_name = last_name
  end

  def first_name=(first_name)
    @first_name = first_name.capitalize
  end

  def last_name=(last_name)
    @last_name = last_name.capitalize
  end
end
