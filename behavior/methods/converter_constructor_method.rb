# frozen_string_literal: true

# Q: How do you represent the conversion of an object to another with a different interface?
# A: Make a Constructor Method that takes the object to be converted as an argument.
class ConverterConstructorMethod
  def self.from_i(param)
    param.to_s
  end

  def self.from_s(param)
    param.to_i
  end
end
