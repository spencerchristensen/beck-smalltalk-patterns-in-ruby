# frozen_string_literal: true

# Q: How do you represent state whose presence varies from instance to instance?
# A: Put variables that only some instances will have in a Dictionary stored in an instance variable called `properties`. Implement `propertyAt: aSymbol` and `propertyAt: aSymbol, put: anObject` to access properties.
class VariableState
  def initialize(properties = {})
    @properties = properties
  end

  def property_at(a_symbol)
    @properties[a_symbol]
  end

  def property_at_put(a_symbol, value)
    @properties[a_symbol] = value
  end
end

# Fun fact: the accessor & writer expose the []= setter just as you would expect
class RubyVariableState
  attr_accessor :properties

  def initialize(properties = {})
    @properties = properties
  end
end
